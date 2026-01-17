#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/i2c.h>
#include <linux/delay.h>
#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

#define DEVICE_NAME   	"sht30_sensor"  // Name of the device node (/dev/sht30_sensor)
#define DRIVER_NAME 	"sht30_i2c"
#define MAX_BUF_SIZE    64

// =========================================================================
// == Low-Level Hardware Interface 
// =========================================================================

/*--- CRC8 helper ---*/ 
static u8 sht30_crc8(const u8 *data, size_t len)
{
	u8 crc = 0xFF;
	size_t i, j;

	for (i = 0; i < len; i++) {
		crc ^= data[i];
		for (j = 0; j < 8; j++) {
			if (crc & 0x80)
				crc = (crc << 1) ^ 0x31;
			else
				crc <<= 1;
		}
	}
	return crc;
}

/*--- Global clientr ---*/ 
static struct i2c_client *sht30_client;

/*--- Helper: read and convert in one function ---*/ 
static int sht30_read_measurement(struct i2c_client *client, int *temp_milli, int *hum_milli)
{
	int ret;
	u8 cmd[2] = { 0x24, 0x00 };
	u8 buf[6];
	u16 raw_temp, raw_hum;

	// Send command
	ret = i2c_master_send(client, cmd, 2);
	if (ret < 0) {
		dev_err(&client->dev, "i2c_master_send failed: %d\n", ret);
		return -EIO;
	}

	msleep(20);	// wait

	// Read 6 bytes
	ret = i2c_master_recv(client, buf, sizeof(buf));
	if (ret != sizeof(buf)) {
		dev_err(&client->dev, "i2c_master_recv failed: %d\n", ret);
		return -EIO;
	}

	// CRC check
	if (buf[2] != sht30_crc8(buf, 2) || buf[5] != sht30_crc8(buf + 3, 2)) {
		dev_err(&client->dev, "CRC error\n");
		return -EIO;
	}

	// Get raw values
	raw_temp = (buf[0] << 8) | buf[1];
	raw_hum  = (buf[3] << 8) | buf[4];

	// Convert to millidegree & millipercent
	*temp_milli = -45000 + ((int)raw_temp * 2672) / 1000;
	*hum_milli = ((int)raw_hum * 1526) / 1000;

	return 0;
}


// =========================================================================
// == File_operations
// =========================================================================

/*--- Called when device file is opened ---*/
static int my_misc_open(struct inode *inode, struct file *file)
{
	return 0;
}

/*--- Called when device file is closed ---*/
static int my_misc_release(struct inode *inode, struct file *file)
{
	return 0;
}

/*--- Called when device file is read ---*/
static ssize_t my_misc_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
	char kbuf[MAX_BUF_SIZE];
	int temp_milli, hum_milli, ret;
	size_t len;

	if (*ppos > 0)
		return 0;

	// Get data
	ret = sht30_read_measurement(sht30_client, &temp_milli, &hum_milli);
	if (ret < 0)
		return ret;

	// Copy data to user-space
	len = snprintf(kbuf, sizeof(kbuf), "%d.%d-%d.%d", temp_milli / 1000, abs(temp_milli % 1000) / 100, hum_milli / 1000, (hum_milli % 1000) / 100);
	if (copy_to_user(buf, kbuf, len))
		return -EFAULT;

	*ppos += len;

	return len;
}

/*--- Called when device file is written ---*/
static ssize_t my_misc_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
	return -EINVAL;
}

static const struct file_operations my_fops = {
	.owner   = THIS_MODULE,
	.open    = my_misc_open,
	.release = my_misc_release,
	.read    = my_misc_read,
	.write   = my_misc_write,
};

static struct miscdevice my_misc_dev = {
	.minor = MISC_DYNAMIC_MINOR,	// Yêu cầu kernel gán một minor number động
	.name  = DEVICE_NAME,			// Tên file sẽ xuất hiện trong /dev/
	.fops  = &my_fops,				// Con trỏ đến file_operations của chúng ta
};


// =========================================================================
// == Linux I2C Driver Implementation
// =========================================================================

/* --- Probe Function --- */
static int my_i2c_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
	int temp_milli, hum_milli, ret;

	pr_info("SHT30: Probe start\n");

	sht30_client = client;

	ret = sht30_read_measurement(sht30_client, &temp_milli, &hum_milli);
	if (ret == 0) {
		pr_info("SHT30: Temp=%d.%dC, Hum=%d.%d%%\n", temp_milli / 1000, abs(temp_milli % 1000) / 100, hum_milli / 1000, (hum_milli % 1000) / 100);
	} else {
		pr_warn("SHT30: Initial read failed\n");
	}

	// Register MISC device
	ret = misc_register(&my_misc_dev);
	if (ret) {
		dev_err(&client->dev, "Failed to register misc device: %d\n", ret);
		return ret;
	}

	pr_info("SHT30 driver initialized: /dev/%s\n", DEVICE_NAME);
	return 0;
}

/* --- Remove Function --- */
static int my_i2c_remove(struct i2c_client *client)
{
	// Unregister MISC device
	misc_deregister(&my_misc_dev);

	pr_info("SHT30 driver removed\n");
	return 0;
}

/*--- Device tree match table ---*/ 
static const struct of_device_id my_i2c_of_match[] = {
	{ .compatible = "haidoan,sht30" },
	{ }
};
MODULE_DEVICE_TABLE(of, my_i2c_of_match);

/*--- I2C driver structure ---*/ 
static struct i2c_driver sht30_driver = {
	.driver = {
		.name           = DRIVER_NAME,
		.of_match_table = my_i2c_of_match,
	},
	.probe  = my_i2c_probe,
	.remove = my_i2c_remove,
};

module_i2c_driver(sht30_driver);

MODULE_AUTHOR("Seikai <haidoan2098@gmail.com>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("SHT30 I2C driver - millidegree/millipercent");
