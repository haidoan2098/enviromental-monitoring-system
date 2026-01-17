#ifndef LOGGER_H
#define LOGGER_H

#include <stddef.h>

// Khởi tạo logger (tạo thư mục, xóa log cũ)
int logger_init(void);

// Ghi log dữ liệu sensor - Nhận raw string từ display buffer
int log_sensor_data(const char *sensor_data);

// Xóa log cũ hơn N ngày
int cleanup_old_logs(int days);

#endif // LOGGER_H