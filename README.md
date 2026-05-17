# Environmental Monitoring System

Environmental monitoring system for BeagleBone Black. All drivers are written from scratch — from Device Tree and kernel modules down to the user-space application — with zero vendor libraries or pre-built drivers.

## Architecture

```mermaid
flowchart TB
    classDef userApp fill:#e3f2fd,stroke:#1565c0,stroke-width:2
    classDef devNode fill:#fff8e1,stroke:#ff8f00,stroke-width:2
    classDef kernelDrv fill:#e8f5e9,stroke:#2e7d32,stroke-width:2
    classDef bus fill:#f3e5f5,stroke:#6a1b9a,stroke-width:2
    classDef hw fill:#eceff1,stroke:#37474f,stroke-width:2
    classDef layer fill:none,stroke:#999,stroke-dasharray:5 5

    subgraph UserSpace["User Space"]
        App("env_monitor_app"):::userApp
        DevSHT30[["/dev/sht30_sensor"]]:::devNode
        DevBH1750[["/dev/bh1750_sensor"]]:::devNode
        DevOLED[["/dev/oled_ssd1306"]]:::devNode
    end

    subgraph KernelSpace["Kernel Space"]
        I2CDrv("I2C + Char Device<br>sht30_i2c_driver.ko<br>bh1750_driver.ko"):::kernelDrv
        SPIDrv("SPI + Char Device<br>ssd1306_spi_driver.ko"):::kernelDrv
    end

    subgraph Hardware["Hardware"]
        I2C2{{"I2C2 Bus"}}:::bus
        SPI1{{"SPI1 Bus"}}:::bus
        SHT30[/"GY-SHT30-D<br>Temp/Humidity"/]:::hw
        BH1750[/"BH1750<br>Light Sensor"/]:::hw
        OLED[/"OLED 0.96"<br>SSD1306/]:::hw
    end

    class UserSpace,KernelSpace,Hardware layer

    App -- "read" --> DevSHT30 & DevBH1750
    App -- "write" --> DevOLED
    DevSHT30 -- "read()" --> I2CDrv
    DevBH1750 -- "read()" --> I2CDrv
    DevOLED -- "write()" --> SPIDrv
    I2CDrv --> I2C2
    SPIDrv <--> SPI1
    I2C2 --> SHT30 & BH1750
    SPI1 --> OLED
```

## Project Structure

```
├── kernel_module_drivers/
│   ├── bh1750/                    # Light sensor driver (I2C)
│   │   ├── device_tree.txt
│   │   └── driver/bh1750_driver.c
│   ├── gy-sht30-d/                # Temp/humidity sensor driver (I2C)
│   │   ├── device_tree.txt
│   │   └── driver/sht30_i2c_driver.c
│   └── oled_sdd1306/              # OLED display driver (SPI)
│       ├── device_tree.txt
│       └── driver/ssd1306_spi_driver.c
└── app/
    ├── src/main.cpp               # User-space application
    └── Makefile
```

### Data Flow

1. User-space app reads sensors via `read()` on `/dev/sht30_sensor` and `/dev/bh1750_sensor`
2. Kernel I2C drivers fetch raw data from the I2C2 bus
3. App formats the readings and writes to `/dev/oled_ssd1306`
4. Kernel SPI driver sends pixel data to OLED via SPI1

## Hardware

| Component | Interface | Description |
|-----------|-----------|-------------|
| BH1750 | I2C | Digital light intensity sensor |
| GY-SHT30-D | I2C | Temperature and humidity sensor |
| SSD1306 | SPI | 128x64 OLED display |

**Platform**: BeagleBone Black (ARM Cortex-A8)

## Device Tree

Each driver includes a `device_tree.txt` with the required Device Tree overlay nodes. These must be added to the BeagleBone Black Device Tree before loading the drivers.

## Technical Highlights

### Kernel Space

- Custom character device drivers for I2C (BH1750, SHT30) and SPI (SSD1306)
- CRC8 validation for SHT30 communication
- Built-in 8x8 bitmap font and icon rendering on OLED
- Device Tree bindings for GPIO (DC/RESET) and bus configuration

### User Space

- Direct device file I/O (`open`/`read`/`write`)
- Polling-based sensor reading at 5-second intervals
- Signal handling for clean shutdown (SIGINT/SIGTERM)

## Notes

- Root privileges required for loading kernel modules and accessing device files
- I2C and SPI bus addresses must match your hardware setup
- OLED display supports bitmap icons (thermometer, humidity, light)
