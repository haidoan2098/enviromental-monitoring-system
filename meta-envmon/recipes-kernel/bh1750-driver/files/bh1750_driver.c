#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/i2c.h>
#include <linux/delay.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME   "bh1750_sensor"
#define DRIVER_NAME   "bh1750_i2c"
#define MAX_BUF_SIZE  64

#define BH1750_CMD_ONE_TIME_HRES  0x20  /* single measurement, 1 lx resolution */
#define BH1750_HRES_CONV_MS       120   /* max conversion time for H-resolution */

/*
 * miscdevice offers no per-instance private data, so the client is kept here.
 * This limits the driver to a single BH1750 on the system.
 */
static struct i2c_client *bh1750_client;

static int bh1750_read_lux(struct i2c_client *client)
{
    int ret;
    u8 cmd = BH1750_CMD_ONE_TIME_HRES;
    u8 buf[2];
    int raw;

    ret = i2c_master_send(client, &cmd, 1);
    if (ret < 0) {
        dev_err(&client->dev, "Failed to send measurement command\n");
        return ret;
    }

    msleep(BH1750_HRES_CONV_MS);

    ret = i2c_master_recv(client, buf, 2);
    if (ret != 2) {
        dev_err(&client->dev, "Failed to read measurement data\n");
        return -EIO;
    }

    raw = (buf[0] << 8) | buf[1];

    return raw * 10 / 12;
}

/* Emits the reading as text, e.g. "123.4" — no trailing newline */
static ssize_t my_misc_read(struct file *file, char __user *buf,
                            size_t count, loff_t *ppos)
{
    char kbuf[MAX_BUF_SIZE];
    int lux10;
    size_t len;

    /* Single-shot read: report EOF on the second call so cat(1) terminates */
    if (*ppos > 0)
        return 0;

    lux10 = bh1750_read_lux(bh1750_client);
    if (lux10 < 0)
        return lux10;

    len = snprintf(kbuf, sizeof(kbuf), "%d.%d", lux10 / 10, lux10 % 10);

    if (copy_to_user(buf, kbuf, len))
        return -EFAULT;

    *ppos += len;
    return len;
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

/*
 * Dispatch table the VFS uses to route syscalls on /dev/bh1750_sensor into
 * this module: read() lands in my_misc_read(), and so on. Callbacks left out
 * of the table (write, ioctl, ...) fall back to the kernel default, which
 * reports the operation as unsupported.
 *
 * .owner = THIS_MODULE lets the kernel pin the module while a process still
 * has the device open, so rmmod cannot pull the code out from under it.
 */
static const struct file_operations my_fops = {
    .owner   = THIS_MODULE,
    .open    = my_misc_open,
    .release = my_misc_release,
    .read    = my_misc_read,
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
 * sensor; the device node is only created here, so /dev/bh1750_sensor cannot
 * exist unless the match succeeded.
 */
static int my_i2c_probe(struct i2c_client *client)
{
    int lux10;

    pr_info("BH1750: probe start\n");

    bh1750_client = client;

    /* Probe-time read confirms the sensor is actually wired up and responding */
    lux10 = bh1750_read_lux(client);
    if (lux10 >= 0)
        pr_info("BH1750 first read: %d.%d lux\n",
                lux10 / 10, lux10 % 10);
    else
        pr_warn("BH1750: initial read failed\n");

    if (misc_register(&my_misc_dev)) {
        dev_err(&client->dev, "Failed to register misc device\n");
        return -EINVAL;
    }

    pr_info("BH1750 driver initialized (/dev/%s)\n", DEVICE_NAME);
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
    pr_info("BH1750 driver removed\n");
}

/*
 * The kernel binds driver to device by comparing these strings against the
 * "compatible" property of each Device Tree node. It is a plain string
 * compare, so a mismatch is silent: probe() simply never runs and no device
 * node appears. The empty entry terminates the table.
 */
static const struct of_device_id my_i2c_of_match[] = {
    { .compatible = "haidoan,bh1750" },
    { }
};

/* Exports the table into module metadata so modprobe can autoload by device */
MODULE_DEVICE_TABLE(of, my_i2c_of_match);

static struct i2c_driver bh1750_driver = {
    .driver = {
        .name           = DRIVER_NAME,
        .of_match_table = my_i2c_of_match,
    },
    .probe  = my_i2c_probe,
    .remove = my_i2c_remove,
};

/* Expands to the module_init/module_exit pair that (un)registers the driver */
module_i2c_driver(bh1750_driver);

MODULE_AUTHOR("Seikai <haidoan2098@gmail.com>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("BH1750 Light Sensor I2C Driver");
