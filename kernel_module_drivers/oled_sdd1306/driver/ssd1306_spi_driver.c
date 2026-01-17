#include <linux/module.h>
#include <linux/spi/spi.h>
#include <linux/gpio.h>
#include <linux/of_gpio.h>
#include <linux/delay.h>
#include <linux/fs.h>
#include <linux/miscdevice.h>
#include <linux/printk.h>
#include <linux/uaccess.h> 
#include <linux/string.h>  
#include <linux/random.h>

#define DEVICE_NAME     "oled_ssd1306"   // Name of the device node (/dev/oled_ssd1306)
#define DRIVER_NAME     "ssd1306_spi"
#define MAX_BUF_SIZE    128

// Font 8x8
static const u8 font_8x8[][8] = {
    {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, // Space (32)
    {0x00, 0x00, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00}, // !
    {0x00, 0x07, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00}, // "
    {0x14, 0x7F, 0x14, 0x7F, 0x14, 0x00, 0x00, 0x00}, // #
    {0x24, 0x2A, 0x7F, 0x2A, 0x12, 0x00, 0x00, 0x00}, // $
    {0x23, 0x13, 0x08, 0x64, 0x62, 0x00, 0x00, 0x00}, // %
    {0x36, 0x49, 0x55, 0x22, 0x50, 0x00, 0x00, 0x00}, // &
    {0x00, 0x05, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00}, // '
    {0x00, 0x1C, 0x22, 0x41, 0x00, 0x00, 0x00, 0x00}, // (
    {0x00, 0x41, 0x22, 0x1C, 0x00, 0x00, 0x00, 0x00}, // )
    {0x08, 0x2A, 0x1C, 0x2A, 0x08, 0x00, 0x00, 0x00}, // *
    {0x08, 0x08, 0x3E, 0x08, 0x08, 0x00, 0x00, 0x00}, // +
    {0x00, 0x50, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00}, // ,
    {0x08, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00}, // -
    {0x00, 0x60, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00}, // .
    {0x20, 0x10, 0x08, 0x04, 0x02, 0x00, 0x00, 0x00}, // /
    {0x3E, 0x51, 0x49, 0x45, 0x3E, 0x00, 0x00, 0x00}, // 0
    {0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00}, // 1
    {0x42, 0x61, 0x51, 0x49, 0x46, 0x00, 0x00, 0x00}, // 2
    {0x21, 0x41, 0x45, 0x4B, 0x31, 0x00, 0x00, 0x00}, // 3
    {0x18, 0x14, 0x12, 0x7F, 0x10, 0x00, 0x00, 0x00}, // 4
    {0x27, 0x45, 0x45, 0x45, 0x39, 0x00, 0x00, 0x00}, // 5
    {0x3C, 0x4A, 0x49, 0x49, 0x30, 0x00, 0x00, 0x00}, // 6
    {0x01, 0x71, 0x09, 0x05, 0x03, 0x00, 0x00, 0x00}, // 7
    {0x36, 0x49, 0x49, 0x49, 0x36, 0x00, 0x00, 0x00}, // 8
    {0x06, 0x49, 0x49, 0x29, 0x1E, 0x00, 0x00, 0x00}, // 9
    {0x00, 0x36, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00}, // :
    {0x00, 0x56, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00}, // ;
    {0x08, 0x14, 0x22, 0x41, 0x00, 0x00, 0x00, 0x00}, // <
    {0x14, 0x14, 0x14, 0x14, 0x14, 0x00, 0x00, 0x00}, // =
    {0x00, 0x41, 0x22, 0x14, 0x08, 0x00, 0x00, 0x00}, // >
    {0x02, 0x01, 0x51, 0x09, 0x06, 0x00, 0x00, 0x00}, // ?
    {0x32, 0x49, 0x79, 0x41, 0x3E, 0x00, 0x00, 0x00}, // @
    {0x7E, 0x11, 0x11, 0x11, 0x7E, 0x00, 0x00, 0x00}, // A
    {0x7F, 0x49, 0x49, 0x49, 0x36, 0x00, 0x00, 0x00}, // B
    {0x3E, 0x41, 0x41, 0x41, 0x22, 0x00, 0x00, 0x00}, // C
    {0x7F, 0x41, 0x41, 0x22, 0x1C, 0x00, 0x00, 0x00}, // D
    {0x7F, 0x49, 0x49, 0x49, 0x41, 0x00, 0x00, 0x00}, // E
    {0x7F, 0x09, 0x09, 0x09, 0x01, 0x00, 0x00, 0x00}, // F
    {0x3E, 0x41, 0x49, 0x49, 0x7A, 0x00, 0x00, 0x00}, // G
    {0x7F, 0x08, 0x08, 0x08, 0x7F, 0x00, 0x00, 0x00}, // H
    {0x00, 0x41, 0x7F, 0x41, 0x00, 0x00, 0x00, 0x00}, // I
    {0x20, 0x40, 0x41, 0x3F, 0x01, 0x00, 0x00, 0x00}, // J
    {0x7F, 0x08, 0x14, 0x22, 0x41, 0x00, 0x00, 0x00}, // K
    {0x7F, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00}, // L
    {0x7F, 0x02, 0x0C, 0x02, 0x7F, 0x00, 0x00, 0x00}, // M
    {0x7F, 0x04, 0x08, 0x10, 0x7F, 0x00, 0x00, 0x00}, // N
    {0x3E, 0x41, 0x41, 0x41, 0x3E, 0x00, 0x00, 0x00}, // O
    {0x7F, 0x09, 0x09, 0x09, 0x06, 0x00, 0x00, 0x00}, // P
    {0x3E, 0x41, 0x51, 0x21, 0x5E, 0x00, 0x00, 0x00}, // Q
    {0x7F, 0x09, 0x19, 0x29, 0x46, 0x00, 0x00, 0x00}, // R
    {0x46, 0x49, 0x49, 0x49, 0x31, 0x00, 0x00, 0x00}, // S
    {0x01, 0x01, 0x7F, 0x01, 0x01, 0x00, 0x00, 0x00}, // T
    {0x3F, 0x40, 0x40, 0x40, 0x3F, 0x00, 0x00, 0x00}, // U
    {0x1F, 0x20, 0x40, 0x20, 0x1F, 0x00, 0x00, 0x00}, // V
    {0x3F, 0x40, 0x38, 0x40, 0x3F, 0x00, 0x00, 0x00}, // W
    {0x63, 0x14, 0x08, 0x14, 0x63, 0x00, 0x00, 0x00}, // X
    {0x07, 0x08, 0x70, 0x08, 0x07, 0x00, 0x00, 0x00}, // Y
    {0x61, 0x51, 0x49, 0x45, 0x43, 0x00, 0x00, 0x00}, // Z
    {0x00, 0x7F, 0x41, 0x41, 0x00, 0x00, 0x00, 0x00}, // [
    {0x02, 0x04, 0x08, 0x10, 0x20, 0x00, 0x00, 0x00}, // Back slash
    {0x00, 0x41, 0x41, 0x7F, 0x00, 0x00, 0x00, 0x00}, // ]
    {0x04, 0x02, 0x01, 0x02, 0x04, 0x00, 0x00, 0x00}, // ^
    {0x40, 0x40, 0x40, 0x40, 0x40, 0x00, 0x00, 0x00}, // _
    {0x00, 0x01, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00}, // `
    {0x20, 0x54, 0x54, 0x54, 0x78, 0x00, 0x00, 0x00}, // a
    {0x7F, 0x48, 0x44, 0x44, 0x38, 0x00, 0x00, 0x00}, // b
    {0x38, 0x44, 0x44, 0x44, 0x20, 0x00, 0x00, 0x00}, // c
    {0x38, 0x44, 0x44, 0x48, 0x7F, 0x00, 0x00, 0x00}, // d
    {0x38, 0x54, 0x54, 0x54, 0x18, 0x00, 0x00, 0x00}, // e
    {0x08, 0x7E, 0x09, 0x01, 0x02, 0x00, 0x00, 0x00}, // f
    {0x0C, 0x52, 0x52, 0x52, 0x3E, 0x00, 0x00, 0x00}, // g
    {0x7F, 0x08, 0x04, 0x04, 0x78, 0x00, 0x00, 0x00}, // h
    {0x00, 0x44, 0x7D, 0x40, 0x00, 0x00, 0x00, 0x00}, // i
    {0x20, 0x40, 0x44, 0x3D, 0x00, 0x00, 0x00, 0x00}, // j
    {0x7F, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00, 0x00}, // k
    {0x00, 0x41, 0x7F, 0x40, 0x00, 0x00, 0x00, 0x00}, // l
    {0x7C, 0x04, 0x18, 0x04, 0x78, 0x00, 0x00, 0x00}, // m
    {0x7C, 0x08, 0x04, 0x04, 0x78, 0x00, 0x00, 0x00}, // n
    {0x38, 0x44, 0x44, 0x44, 0x38, 0x00, 0x00, 0x00}, // o
    {0x7C, 0x14, 0x14, 0x14, 0x08, 0x00, 0x00, 0x00}, // p
    {0x08, 0x14, 0x14, 0x18, 0x7C, 0x00, 0x00, 0x00}, // q
    {0x7C, 0x08, 0x04, 0x04, 0x08, 0x00, 0x00, 0x00}, // r
    {0x48, 0x54, 0x54, 0x54, 0x20, 0x00, 0x00, 0x00}, // s
    {0x04, 0x3F, 0x44, 0x40, 0x20, 0x00, 0x00, 0x00}, // t
    {0x3C, 0x40, 0x40, 0x20, 0x7C, 0x00, 0x00, 0x00}, // u
    {0x1C, 0x20, 0x40, 0x20, 0x1C, 0x00, 0x00, 0x00}, // v
    {0x3C, 0x40, 0x30, 0x40, 0x3C, 0x00, 0x00, 0x00}, // w
    {0x44, 0x28, 0x10, 0x28, 0x44, 0x00, 0x00, 0x00}, // x
    {0x0C, 0x50, 0x50, 0x50, 0x3C, 0x00, 0x00, 0x00}, // y
    {0x44, 0x64, 0x54, 0x4C, 0x44, 0x00, 0x00, 0x00}, // z
    {0x00, 0x08, 0x36, 0x41, 0x00, 0x00, 0x00, 0x00}, // {
    {0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00}, // |
    {0x00, 0x41, 0x36, 0x08, 0x00, 0x00, 0x00, 0x00}, // }
    {0x08, 0x04, 0x08, 0x10, 0x08, 0x00, 0x00, 0x00}, // ~
};

static const u8 icon_thermometer[8] = { 0x04, 0x0A, 0x0A, 0x0A, 0x0E, 0x1F, 0x1F, 0x0E }; // Thermometer icon 
static const u8 icon_water_drop[8]  = { 0x04, 0x04, 0x0A, 0x0A, 0x11, 0x11, 0x0A, 0x04 }; // Water drop icon
static const u8 icon_sun[8]         = { 0x00, 0x15, 0x0E, 0x1F, 0x1F, 0x0E, 0x15, 0x00 }; // Sun icon


// =========================================================================
// == Low-Level Hardware Interface
// =========================================================================

// Global variables for device and GPIOs
static struct spi_device *ssd1306_spi;
static int reset_gpio;
static int dc_gpio;

// Send a command byte to SSD1306
static void ssd1306_send_command(u8 cmd) 
{
    gpio_set_value(dc_gpio, 0);         
    spi_write(ssd1306_spi, &cmd, 1);
}

// Send a data byte to SSD1306
static void ssd1306_send_data(u8 data) 
{
    gpio_set_value(dc_gpio, 1);         
    spi_write(ssd1306_spi, &data, 1);
}

// Hardware reset
static void ssd1306_reset(void)
{
    gpio_set_value(reset_gpio, 0);     
    msleep(10);
    gpio_set_value(reset_gpio, 1);   
    msleep(10);
}


// =========================================================================
// == Display Controller Management (Quản lý Trạng thái Màn hình)
// =========================================================================

// Initialize display
static void ssd1306_init_display(void)
{
    ssd1306_reset();

    ssd1306_send_command(0xAE);         // Display OFF
    ssd1306_send_command(0xD5);         // Set display clock
    ssd1306_send_command(0x80);
    ssd1306_send_command(0xA8);         // Set multiplex ratio
    ssd1306_send_command(0x3F);         // 64 lines
    ssd1306_send_command(0xD3);         // Set display offset
    ssd1306_send_command(0x00);
    ssd1306_send_command(0x40);         // Set start line
    ssd1306_send_command(0x8D);         // Charge pump
    ssd1306_send_command(0x14);         // Enable charge pump
    ssd1306_send_command(0x20);         // Memory mode
    ssd1306_send_command(0x00);         // Horizontal addressing
    ssd1306_send_command(0xA1);         // Segment remap
    ssd1306_send_command(0xC8);         // COM scan direction
    ssd1306_send_command(0xDA);         // COM pins config
    ssd1306_send_command(0x12);
    ssd1306_send_command(0x81);         // Set contrast
    ssd1306_send_command(0xCF);
    ssd1306_send_command(0xD9);         // Set precharge
    ssd1306_send_command(0xF1);
    ssd1306_send_command(0xDB);         // Set VCOMH
    ssd1306_send_command(0x40);
    ssd1306_send_command(0xA4);         // Resume to RAM
    ssd1306_send_command(0xA6);         // Normal display
    ssd1306_send_command(0xAF);         // Display ON
}

// Fill screen (white) - Test
// static void ssd1306_fill_display(void)
// {
//     int page, col;
    
//     for (page = 0; page < 8; page++) {
//         ssd1306_send_command(0xB0 + page);  
//         ssd1306_send_command(0x00);         
//         ssd1306_send_command(0x10);         
        
//         for (col = 0; col < 128; col++) {
//             ssd1306_send_data(0xFF);        
//         }
//     }
// }

// Clear screen (black)
static void ssd1306_clear_display(void)
{
    int page, col;
    
    for (page = 0; page < 8; page++) {
        ssd1306_send_command(0xB0 + page);  
        ssd1306_send_command(0x00);         
        ssd1306_send_command(0x10);         
        
        for (col = 0; col < 128; col++) {
            ssd1306_send_data(0x00);        
        }
    }
}


// =========================================================================
// == Graphics Primitives
// =========================================================================

// Draw a character at the position (x, y) - x: column (0-127), y: row (0-7)
static void ssd1306_draw_char(int x, int y, char ch)
{
    int i;
    
    if (ch < 32 || ch > 126) {
        ch = 32;  
    }
    
    ssd1306_send_command(0xB0 + y);             
    ssd1306_send_command(0x00 | (x & 0x0F));    
    ssd1306_send_command(0x10 | (x >> 4));      
    
    for (i = 0; i < 8; i++) {
        ssd1306_send_data(font_8x8[ch - 32][i]);
    }
}

// Draw an 8x8 icon at the position (x, y) - x: column (0-127), y: row (0-7)
static void ssd1306_draw_icon(int x, int y, const u8 *icon)
{
    int i;
    
    ssd1306_send_command(0xB0 + y);            
    ssd1306_send_command(0x00 | (x & 0x0F));    
    ssd1306_send_command(0x10 | (x >> 4));      
    
    for (i = 0; i < 8; i++) {
        ssd1306_send_data(icon[i]);
    }
}

// Display string at position (x, y) - x: column (0-127), y: row (0-7)
static void ssd1306_display_string(int x, int y, const char *str)
{
    int i = 0;
    
    while (str[i] != '\0' && x < 128) {
        ssd1306_draw_char(x, y, str[i]);
        x += 8;  
        i++;
    }
}


// =========================================================================
// == Application-Level UI
// =========================================================================

static void ssd1306_update_data(char *temp, char *humi, char *lux) 
{
    char temp_buf[16], humi_buf[16], lux_buf[16];

    snprintf(temp_buf, sizeof(temp_buf), "%sC", temp); 
    snprintf(humi_buf, sizeof(humi_buf), "%s%%", humi); 
    snprintf(lux_buf, sizeof(lux_buf), "%slx", lux);

    ssd1306_display_string(70, 2, temp_buf);
    ssd1306_display_string(70, 4, humi_buf);
    ssd1306_display_string(70, 6, lux_buf);
}

static void ssd1306_display_startup(void) 
{
    ssd1306_display_string(37, 2, "~Ohayo~");
    ssd1306_display_string(20, 4, "Doan Phu Hai");
    ssd1306_display_string(2, 5, "<Embedded Linux>");  
}

// Temperature update (°C)
// static void ssd1306_update_temperature(float temp)
// {
//     char buf[16];

//     int temp_int = (int)temp; 
//     int temp_frac = (int)((temp - temp_int) * 10); 

//     if (temp_frac < 0) {
//         temp_frac = -temp_frac;
//     }

//     snprintf(buf, sizeof(buf), "%d.%dC", temp_int, temp_frac); 
//     ssd1306_display_string(70, 2, buf);
// }

// Humidity update (%)
// static void ssd1306_update_humidity(float humi)
// {
//     char buf[16];

//     int humi_int = (int)humi; 
//     int humi_frac = (int)((humi - humi_int) * 10); 

//     snprintf(buf, sizeof(buf), "%d.%d%%", humi_int, humi_frac); 
//     ssd1306_display_string(70, 4, buf);
// }

// Light intensity update (lux)
// static void ssd1306_update_light(int lux)
// {
//     char buf[16];
    
//     snprintf(buf, sizeof(buf), "%4dlx", lux);
//     ssd1306_display_string(70, 6, buf);
// }


// =========================================================================
// == File_operations 
// =========================================================================

// Called when device file is opened
static int my_misc_open(struct inode *inode, struct file *file)
{
    return 0; 
}

// Called when device file is closed
static int my_misc_release(struct inode *inode, struct file *file)
{
    return 0; 
}

// Called when device file is read
static ssize_t my_misc_read(struct file *file, char __user *buf, size_t count, loff_t *ppos)
{
    return 0; 
}

/*--- Called when device file is written ---*/
static ssize_t my_misc_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos)
{
    char kbuf[MAX_BUF_SIZE];
    char *p, *temp, *humi, *lux;

    // Limit buffer size
    if (count > MAX_BUF_SIZE - 1) {
        count = MAX_BUF_SIZE - 1;
    }

    // Copy data from user-space
    if (copy_from_user(kbuf, buf, count)) {
        return -EFAULT;
    }

    // Null-terminate
    kbuf[count] = '\0';

    // Remove newline if present
    if (kbuf[count - 1] == '\n') {
        kbuf[count - 1] = '\0';
    }

    // Split string
    p = kbuf;
    temp = strsep(&p, "-");
    humi = strsep(&p, "-");
    lux = strsep(&p, "-");

    ssd1306_clear_display();        

    ssd1306_draw_icon(1, 2, icon_thermometer);      
    ssd1306_display_string(16, 2, "Temp :");
    
    ssd1306_draw_icon(1, 4, icon_water_drop);       
    ssd1306_display_string(16, 4, "Humid:");
    
    ssd1306_draw_icon(1, 6, icon_sun);              
    ssd1306_display_string(16, 6, "Light:");
      
    // ssd1306_update_temperature(25.6);  
    // ssd1306_update_humidity(68.3);    
    // ssd1306_update_light(1234);     
    ssd1306_update_data(temp, humi, lux);

    return count; 
}

static const struct file_operations my_fops = {
    .owner   = THIS_MODULE,
    .open    = my_misc_open,
    .release = my_misc_release,
    .read    = my_misc_read,
    .write   = my_misc_write,
};

static struct miscdevice my_misc_dev = {
    .minor = MISC_DYNAMIC_MINOR,    // Yêu cầu kernel gán một minor number động
    .name  = DEVICE_NAME,           // Tên file sẽ xuất hiện trong /dev/
    .fops  = &my_fops,              // Con trỏ đến file_operations của chúng ta
};


// =========================================================================
// == Linux SPI Driver Implementation
// =========================================================================

/* --- Probe Function --- */
static int my_spi_probe(struct spi_device *spi)
{
    int ret;
    
    pr_info("SSD1306: Probe start\n");
    
    ssd1306_spi = spi;
    
    // Get GPIO from device tree
    dc_gpio = of_get_named_gpio(spi->dev.of_node, "dc-gpios", 0);
    reset_gpio = of_get_named_gpio(spi->dev.of_node, "reset-gpios", 0);
    
    // Configuration DC GPIO
    if (!gpio_is_valid(dc_gpio)) {              // Check DC GPIO
        dev_err(&spi->dev, "Invalid DC GPIO\n");
        return -EINVAL;
    }
    ret = gpio_request(dc_gpio, "SSD1306_DC");  // Request DC GPIO
    if (ret < 0) {
        dev_err(&spi->dev, "Failed to request DC GPIO: %d\n", ret);
        return ret;
    }
    gpio_direction_output(dc_gpio, 0);
    
    // Configuration RESET GPIO
    if (!gpio_is_valid(reset_gpio)) {                   // Check RESET GPIO
        dev_err(&spi->dev, "Invalid RESET GPIO\n");
        return -EINVAL;
    }
    ret = gpio_request(reset_gpio, "SSD1306_RESET");    // Request REST GPIO
    if (ret < 0) {
        dev_err(&spi->dev, "Failed to request RESET GPIO: %d\n", ret);
        gpio_free(dc_gpio);  
        return ret;
    }
    gpio_direction_output(reset_gpio, 1);
    
    pr_info("SSD1306: DC GPIO=%d, RESET GPIO=%d\n", dc_gpio, reset_gpio);
    
    ssd1306_init_display();
    ssd1306_clear_display();

    // ssd1306_draw_icon(1, 2, icon_thermometer);      
    // ssd1306_display_string(16, 2, "Temp :");
    
    // ssd1306_draw_icon(1, 4, icon_water_drop);       
    // ssd1306_display_string(16, 4, "Humid:");
    
    // ssd1306_draw_icon(1, 6, icon_sun);              
    // ssd1306_display_string(16, 6, "Light:");
    ssd1306_display_startup();
    
    // Register MISC device
    ret = misc_register(&my_misc_dev);
    if (ret) {
        pr_err("my_misc_driver: Không thể đăng ký misc device. Lỗi: %d\n", ret);
        return ret;
    }
    
    pr_info("SSD1306 driver initialized\n");
    return 0;
}

/* --- Remove Function --- */
static int my_spi_remove(struct spi_device *spi)
{
    ssd1306_clear_display();
    ssd1306_send_command(0xAE);
    
    // Free GPIOs
    gpio_free(reset_gpio);
    gpio_free(dc_gpio);

    // Unregister MISC device
    misc_deregister(&my_misc_dev);
    
    pr_info("SSD1306 driver removed\n");
    return 0;
}

/*--- Device tree match table ---*/ 
static const struct of_device_id my_spi_of_match[] = {
    { .compatible = "haidoan,ssd1306-spi" },
    { }
};
MODULE_DEVICE_TABLE(of, my_spi_of_match);

/*--- SPI driver structure ---*/ 
static struct spi_driver my_spi_driver = {
    .driver = {
        .name           = DRIVER_NAME,
        .of_match_table = my_spi_of_match,
    },
    .probe  = my_spi_probe,
    .remove = my_spi_remove,
};

module_spi_driver(my_spi_driver);

MODULE_AUTHOR("Seikai <haidoan2098@gmail.com>");
MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("SSD1306 SPI driver");