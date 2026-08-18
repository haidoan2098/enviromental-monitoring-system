#include <iostream>
#include <cstring>
#include <csignal>
#include <fcntl.h>
#include <unistd.h>

#define OLED_FILE_PATH   "/dev/oled_ssd1306"
#define BH1750_FILE_PATH "/dev/bh1750_sensor"
#define SHT30_FILE_PATH  "/dev/sht30_sensor"

// Signal flag: must be volatile sig_atomic_t for async signal safety
static volatile sig_atomic_t keep_running = 1;

static void sigint_handler(int sig) {
    (void)sig;
    keep_running = 0;
}

static int read_sensor_data(const char *file_path, char *buffer, size_t buffer_size)
{
    int fd = open(file_path, O_RDONLY);
    if (fd < 0) {
        std::cerr << "open " << file_path << ": " << strerror(errno) << std::endl;
        return -1;
    }

    int ret = read(fd, buffer, buffer_size - 1);
    if (ret < 0) {
        std::cerr << "read " << file_path << ": " << strerror(errno) << std::endl;
        close(fd);
        return -1;
    }

    if (ret == 0) {
        std::cerr << "read " << file_path << ": no data" << std::endl;
        close(fd);
        return -1;
    }

    buffer[ret] = '\0';
    close(fd);
    return 0;
}

static int write_oled_data(const char *data)
{
    int fd = open(OLED_FILE_PATH, O_WRONLY);
    if (fd < 0) {
        std::cerr << "open " << OLED_FILE_PATH << ": " << strerror(errno) << std::endl;
        return -1;
    }

    int ret = write(fd, data, strlen(data));
    if (ret < 0) {
        std::cerr << "write " << OLED_FILE_PATH << ": " << strerror(errno) << std::endl;
        close(fd);
        return -1;
    }

    close(fd);
    return 0;
}

static void display_data(void)
{
    char bh1750_buffer[64];
    char sht30_buffer[64];

    // Read SHT30 (temperature + humidity) and BH1750 (light)
    if (read_sensor_data(SHT30_FILE_PATH, sht30_buffer, sizeof(sht30_buffer)) != 0) {
        snprintf(sht30_buffer, sizeof(sht30_buffer), "ERROR");
    }

    if (read_sensor_data(BH1750_FILE_PATH, bh1750_buffer, sizeof(bh1750_buffer)) != 0) {
        snprintf(bh1750_buffer, sizeof(bh1750_buffer), "ERROR");
    }

    // Format: "temp-humi-lux" — OLED driver splits by '-' to render each field
    char oled_buffer[128];
    snprintf(oled_buffer, sizeof(oled_buffer), "%s-%s", sht30_buffer, bh1750_buffer);

    if (write_oled_data(oled_buffer) != 0) {
        std::cerr << "write_oled failed" << std::endl;
    }

    std::cout << "Data: " << oled_buffer << std::endl;
}

int main(void)
{
    signal(SIGINT, sigint_handler);
    signal(SIGTERM, sigint_handler);

    std::cout << "Starting sensor monitoring..." << std::endl;

    while (keep_running) {
        display_data();
        sleep(5);  // Poll every 5 seconds
    }

    std::cout << "\nExiting..." << std::endl;
    return 0;
}
