#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/i2c.h>
#include <linux/delay.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME     "sht30_sensor"
#define DRIVER_NAME     "sht30_i2c"
#define MAX_BUF_SIZE    64

#define SHT30_CRC_POLY  0x31
#define SHT30_CRC_INIT  0xFF

#define SHT30_CMD_MSB   0x24    /* single shot, high repeatability, no clock stretching */
#define SHT30_CMD_LSB   0x00
#define SHT30_MEAS_MS   20      /* max measurement duration */

static u8 sht30_crc8(const u8 *data, size_t len)
{
    u8 crc = SHT30_CRC_INIT;
    size_t i, j;

    for (i = 0; i < len; i++) {
        crc ^= data[i];
        for (j = 0; j < 8; j++) {
            if (crc & 0x80)
                crc = (crc << 1) ^ SHT30_CRC_POLY;
            else
                crc <<= 1;
        }
    }
    return crc;
}

/*
 * miscdevice offers no per-instance private data, so the client is kept here.
 * This limits the driver to a single SHT30 on the system.
 */
static struct i2c_client *sht30_client;

static int sht30_read_measurement(struct i2c_client *client, int *temp_milli, int *hum_milli)
{
    int ret;
    u8 cmd[2] = { SHT30_CMD_MSB, SHT30_CMD_LSB };
    u8 buf[6];
    u16 raw_temp, raw_hum;

    ret = i2c_master_send(client, cmd, 2);
    if (ret < 0) {
        dev_err(&client->dev, "i2c_master_send failed: %d\n", ret);
        return -EIO;
    }

    msleep(SHT30_MEAS_MS);

    ret = i2c_master_recv(client, buf, sizeof(buf));
    if (ret != sizeof(buf)) {
        dev_err(&client->dev, "i2c_master_recv failed: %d\n", ret);
        return -EIO;
    }

    if (buf[2] != sht30_crc8(buf, 2) || buf[5] != sht30_crc8(buf + 3, 2)) {
        dev_err(&client->dev, "CRC error\n");
        return -EIO;
    }

    raw_temp = (buf[0] << 8) | buf[1];
    raw_hum  = (buf[3] << 8) | buf[4];

    *temp_milli = -45000 + ((int)raw_temp * 2672) / 1000;
    *hum_milli = ((int)raw_hum * 1526) / 1000;

    return 0;
}

/*
 * Called on every open() of the device node. Nothing to set up here: the
 * sensor is stateless and the i2c_client is already held in a global, so
 * the driver just accepts the open.
 */
static int my_misc_open(struct inode *inode, struct file *file)
{
    return 0;
}

/* Counterpart of open(), called when the last reference to the file is closed */
static int my_misc_release(struct inode *inode, struct file *file)
{
    return 0;
}

/* Emits "<temp>-<humidity>", e.g. "25.6-68.3" — no trailing newline */
static ssize_t my_misc_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
    char kbuf[MAX_BUF_SIZE];
    int temp_milli, hum_milli, ret;
    size_t len;

    /* Single-shot read: report EOF on the second call so cat(1) terminates */
    if (*ppos > 0)
        return 0;

    ret = sht30_read_measurement(sht30_client, &temp_milli, &hum_milli);
    if (ret < 0)
        return ret;

    len = snprintf(kbuf, sizeof(kbuf), "%d.%d-%d.%d", temp_milli / 1000, abs(temp_milli % 1000) / 100, hum_milli / 1000, (hum_milli % 1000) / 100);
    if (copy_to_user(buf, kbuf, len))
        return -EFAULT;

    *ppos += len;

    return len;
}

/* Sensor is read-only; reject writes rather than silently accepting them */
static ssize_t my_misc_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    return -EINVAL;
}

/*
 * Dispatch table the VFS uses to route syscalls on /dev/sht30_sensor into
 * this module: read() lands in my_misc_read(), write() in my_misc_write().
 *
 * .owner = THIS_MODULE lets the kernel pin the module while a process still
 * has the device open, so rmmod cannot pull the code out from under it.
 */
static const struct file_operations my_fops = {
    .owner   = THIS_MODULE,
    .open    = my_misc_open,
    .release = my_misc_release,
    .read    = my_misc_read,
    .write   = my_misc_write,
};

/*
 * miscdevice is a thin wrapper over a char device. It shares major number 10
 * with every other misc driver and takes a dynamic minor, which replaces the
 * usual alloc_chrdev_region() + cdev_init() + cdev_add() + device_create()
 * sequence with a single misc_register() call.
 *
 * .name is the node that appears under /dev once registration succeeds.
 */
static struct miscdevice my_misc_dev = {
    .minor = MISC_DYNAMIC_MINOR,
    .name  = DEVICE_NAME,
    .fops  = &my_fops,
};

/*
 * Called by the I2C core once it pairs this driver with a device from the
 * Device Tree. The i2c_client handed in is the bus-level handle for the
 * sensor; the device node is only created here, so /dev/sht30_sensor cannot
 * exist unless the match succeeded.
 */
static int my_i2c_probe(struct i2c_client *client)
{
    int temp_milli, hum_milli, ret;

    pr_info("SHT30: Probe start\n");

    sht30_client = client;

    /* Probe-time read confirms the sensor is actually wired up and responding */
    ret = sht30_read_measurement(sht30_client, &temp_milli, &hum_milli);
    if (ret == 0) {
        pr_info("SHT30: Temp=%d.%dC, Hum=%d.%d%%\n", temp_milli / 1000, abs(temp_milli % 1000) / 100, hum_milli / 1000, (hum_milli % 1000) / 100);
    } else {
        pr_warn("SHT30: Initial read failed\n");
    }

    ret = misc_register(&my_misc_dev);
    if (ret) {
        dev_err(&client->dev, "Failed to register misc device: %d\n", ret);
        return ret;
    }

    pr_info("SHT30 driver initialized: /dev/%s\n", DEVICE_NAME);
    return 0;
}

/*
 * Called when the driver is unbound, on rmmod or when the device disappears.
 * Returns void because the core ignores any result: teardown is not allowed
 * to fail. Everything probe() acquired has to be released here.
 */
static void my_i2c_remove(struct i2c_client *client)
{
    misc_deregister(&my_misc_dev);

    pr_info("SHT30 driver removed\n");
}

/*
 * The kernel binds driver to device by comparing these strings against the
 * "compatible" property of each Device Tree node. It is a plain string
 * compare, so a mismatch is silent: probe() simply never runs and no device
 * node appears. The empty entry terminates the table.
 */
static const struct of_device_id my_i2c_of_match[] = {
    { .compatible = "haidoan,sht30" },
    { }
};

/* Exports the table into module metadata so modprobe can autoload by device */
MODULE_DEVICE_TABLE(of, my_i2c_of_match);

static struct i2c_driver sht30_driver = {
    .driver = {
        .name           = DRIVER_NAME,
        .of_match_table = my_i2c_of_match,
    },
    .probe  = my_i2c_probe,
    .remove = my_i2c_remove,
};

/* Expands to the module_init/module_exit pair that (un)registers the driver */
module_i2c_driver(sht30_driver);

MODULE_AUTHOR("Seikai <haidoan2098@gmail.com>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("SHT30 I2C driver - millidegree/millipercent");
