#include "display_data.h"
#include "logger.h"
#include <stdio.h>
#include <signal.h>
#include <unistd.h>

volatile sig_atomic_t keep_running = 1;

void sigint_handler(int sig) {
    (void)sig;
    keep_running = 0;
}

int main(void)
{
    signal(SIGINT, sigint_handler);
    signal(SIGTERM, sigint_handler);
    
    // *** THÊM: Khởi tạo logger ***
    if (logger_init() != 0) {
        fprintf(stderr, "Failed to initialize logger\n");
        return 1;
    }
    
    printf("Starting sensor monitoring...\n");
    
    while (keep_running) {
        // Đọc và hiển thị dữ liệu
        display_data();
        
        // *** THÊM: Ghi log ***
        const char *data = get_ssd1306_buffer();
        if (log_sensor_data(data) != 0) {
            fprintf(stderr, "Failed to log sensor data\n");
        }
        
        // In ra console để debug
        printf("Data: %s\n", data);
        
        sleep(5);
    }
    
    printf("\nExiting...\n");
    return 0;
}