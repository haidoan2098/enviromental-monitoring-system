SUMMARY = "BH1750 ambient light sensor character driver (I2C)"
LICENSE = "GPL-2.0-only"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

inherit module

SRC_URI = "file://Makefile \
           file://bh1750_driver.c \
           "

S = "${WORKDIR}"

RPROVIDES:${PN} += "kernel-module-bh1750-driver"
KERNEL_MODULE_AUTOLOAD += "bh1750_driver"
