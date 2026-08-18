SUMMARY = "SSD1306 128x64 OLED character driver (SPI)"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

inherit module

SRC_URI = "file://Makefile \
           file://ssd1306_spi_driver.c \
           "

S = "${WORKDIR}"

RPROVIDES:${PN} += "kernel-module-ssd1306-driver"
KERNEL_MODULE_AUTOLOAD += "ssd1306_spi_driver"
