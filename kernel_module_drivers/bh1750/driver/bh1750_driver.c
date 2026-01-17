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

/* Global I2C client */
static struct i2c_client *bh1750_client;

/* =========================================================================
 *  Low-Level BH1750 Read Function
 * ========================================================================= */
static int bh1750_read_lux(struct i2c_client *client)
{
    int ret;
    u8 cmd = 0x20;      // One-time H-Resolution mode
    u8 buf[2];
    int raw;

    /* Send measurement command */
    ret = i2c_master_send(client, &cmd, 1);
    if (ret < 0) {
        dev_err(&client->dev, "Failed to send measurement command\n");
        return ret;
    }

    msleep(120); // Wait for conversion

    /* Read 2 bytes */
    ret = i2c_master_recv(client, buf, 2);
    if (ret != 2) {
        dev_err(&client->dev, "Failed to read measurement data\n");
        return -EIO;
    }

    raw = (buf[0] << 8) | buf[1];

    /* Convert to lux (datasheet: lux = raw / 1.2) */
    return raw * 10 / 12;  // return lux * 10 for one decimal place
}

/* =========================================================================
 *  File Operations
 * ========================================================================= */

static ssize_t my_misc_read(struct file *file, char __user *buf,
                            size_t count, loff_t *ppos)
{
    char kbuf[MAX_BUF_SIZE];
    int lux10;      // lux * 10
    size_t len;

    if (*ppos > 0)
        return 0;

    lux10 = bh1750_read_lux(bh1750_client);
    if (lux10 < 0)
        return lux10;

    /* Format output: e.g. "123.4\n" */
    len = snprintf(kbuf, sizeof(kbuf), "%d.%d", lux10 / 10, lux10 % 10);

    if (copy_to_user(buf, kbuf, len))
        return -EFAULT;

    *ppos += len;
    return len;
}

static int my_misc_open(struct inode *inode, struct file *file)
{
    return 0;
}

static int my_misc_release(struct inode *inode, struct file *file)
{
    return 0;
}

static const struct file_operations my_fops = {
    .owner   = THIS_MODULE,
    .open    = my_misc_open,
    .release = my_misc_release,
    .read    = my_misc_read,
};

static struct miscdevice my_misc_dev = {
    .minor = MISC_DYNAMIC_MINOR,
    .name  = DEVICE_NAME,
    .fops  = &my_fops,
};

/* =========================================================================
 *  I2C Driver
 * ========================================================================= */

static int my_i2c_probe(struct i2c_client *client,
                        const struct i2c_device_id *id)
{
    int lux10;

    pr_info("BH1750: probe start\n");

    bh1750_client = client;

    lux10 = bh1750_read_lux(client);
    if (lux10 >= 0)
        pr_info("BH1750 first read: %d.%d lux\n",
                lux10 / 10, lux10 % 10);
    else
        pr_warn("BH1750: initial read failed\n");

    /* Register /dev/bh1750_sensor */
    if (misc_register(&my_misc_dev)) {
        dev_err(&client->dev, "Failed to register misc device\n");
        return -EINVAL;
    }

    pr_info("BH1750 driver initialized (/dev/%s)\n", DEVICE_NAME);
    return 0;
}

static int my_i2c_remove(struct i2c_client *client)
{
    misc_deregister(&my_misc_dev);
    pr_info("BH1750 driver removed\n");
    return 0;
}

static const struct of_device_id my_i2c_of_match[] = {
    { .compatible = "haidoan,bh1750" },
    { }
};
MODULE_DEVICE_TABLE(of, my_i2c_of_match);

static struct i2c_driver bh1750_driver = {
    .driver = {
        .name           = DRIVER_NAME,
        .of_match_table = my_i2c_of_match,
    },
    .probe  = my_i2c_probe,
    .remove = my_i2c_remove,
};

module_i2c_driver(bh1750_driver);

MODULE_AUTHOR("Seikai <haidoan2098@gmail.com>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("BH1750 Light Sensor I2C Driver");
