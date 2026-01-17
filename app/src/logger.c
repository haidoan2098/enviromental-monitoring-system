#include "logger.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <dirent.h>
#include <unistd.h>
#include <fcntl.h>
#include <time.h>

#define LOG_DIR "/var/log/sensor_monitor"
#define MAX_LOG_AGE_DAYS 7

// Lay timestamp hien tai dang string
static void get_timestamp(char *buffer, size_t size)
{
    time_t now = time(NULL);
    struct tm *t = localtime(&now);
    strftime(buffer, size, "%Y-%m-%d %H:%M:%S", t);
}

// Lay ten file log theo ngay hien tai
static void get_daily_log_filename(char *buffer, size_t size)
{
    time_t now = time(NULL);
    struct tm *t = localtime(&now);
    
    // Format: sensor_data_2025-11-23.log
    snprintf(buffer, size, "%s/sensor_data_%04d-%02d-%02d.log",
             LOG_DIR, 
             t->tm_year + 1900,
             t->tm_mon + 1,
             t->tm_mday);
}

// Tao thu muc log neu chua ton tai
static int create_log_directory(void)
{
    struct stat st = {0};
    
    if (stat(LOG_DIR, &st) == -1) {
        if (mkdir(LOG_DIR, 0755) != 0) {
            perror("mkdir " LOG_DIR);
            return -1;
        }
        printf("Created log directory: %s\n", LOG_DIR);
    }
    
    return 0;
}

// Parse ngay tu ten file log
static time_t parse_date_from_filename(const char *filename)
{
    int year, month, day;
    
    // Parse format: sensor_data_YYYY-MM-DD.log
    if (sscanf(filename, "sensor_data_%d-%d-%d.log", &year, &month, &day) == 3) {
        struct tm tm = {0};
        tm.tm_year = year - 1900;
        tm.tm_mon = month - 1;
        tm.tm_mday = day;
        tm.tm_hour = 0;
        tm.tm_min = 0;
        tm.tm_sec = 0;
        
        return mktime(&tm);
    }
    
    return 0;
}

// Xoa log cu hon N ngay (dua vao ten file)
int cleanup_old_logs(int days) 
{
    DIR *dir = opendir(LOG_DIR);
    if (!dir) {
        perror("opendir " LOG_DIR);
        return -1;
    }

    time_t now = time(NULL);
    time_t cutoff_time = now - (days * 24 * 60 * 60);
    int deleted_count = 0;

    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
        // Bo qua . va ..
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0) {
            continue;
        }

        // Chi xu ly file co format sensor_data_YYYY-MM-DD.log
        if (strncmp(entry->d_name, "sensor_data_", 12) != 0) {
            continue;
        }

        // Parse ngay tu ten file
        time_t file_date = parse_date_from_filename(entry->d_name);
        
        if (file_date == 0) {
            continue;
        }

        // So sanh voi cutoff time
        if (file_date < cutoff_time) {
            char filepath[512];
            snprintf(filepath, sizeof(filepath), "%s/%s", LOG_DIR, entry->d_name);
            
            if (unlink(filepath) == 0) {
                printf("Deleted old log: %s\n", entry->d_name);
                deleted_count++;
            } else {
                perror("unlink");
            }
        }
    }

    closedir(dir);

    if (deleted_count > 0) {
        printf("Cleaned up %d old log file(s)\n", deleted_count);
    }
    
    return 0;
}

// Khoi tao logger
int logger_init(void)
{
    printf("=== Initializing Logger ===\n");
    
    // Tao thu muc log
    if (create_log_directory() != 0) {
        return -1;
    }
    
    // Xoa log cu hon 7 ngay
    cleanup_old_logs(MAX_LOG_AGE_DAYS);
    
    // Hien thi ten file log hien tai
    char current_log[256];
    get_daily_log_filename(current_log, sizeof(current_log));
    printf("Current log file: %s\n", current_log);
    printf("Log retention: %d days\n\n", MAX_LOG_AGE_DAYS);
    
    return 0;
}

// Ghi log du lieu sensor - Nhan raw string "xxx-yyy-zzz"
int log_sensor_data(const char *sensor_data)
{
    // Lay ten file log theo ngay hien tai
    char log_filename[256];
    get_daily_log_filename(log_filename, sizeof(log_filename));
    
    // Mo file voi O_CREAT | O_APPEND
    int fd = open(log_filename, O_WRONLY | O_CREAT | O_APPEND, 0644);
    if (fd < 0) {
        perror("open log file");
        return -1;
    }

    char timestamp[64];
    get_timestamp(timestamp, sizeof(timestamp));

    // Format: timestamp,sensor_data
    // Vi du: "2025-11-23 14:30:00,Temp:25.5 Hum:60.2-Lux:1250"
    char log_buffer[512];
    int len = snprintf(log_buffer, sizeof(log_buffer), "%s,%s\n", 
                      timestamp, sensor_data);

    if (len >= (int)sizeof(log_buffer)) {
        fprintf(stderr, "log_buffer overflow\n");
        close(fd);
        return -1;
    }

    // Ghi vao file
    ssize_t written = write(fd, log_buffer, len);
    close(fd);

    if (written != len) {
        perror("write log file");
        return -1;
    }

    return 0;
}