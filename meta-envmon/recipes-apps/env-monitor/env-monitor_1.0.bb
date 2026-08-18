SUMMARY = "Environmental monitor user-space application"
DESCRIPTION = "Reads SHT30 and BH1750 via character devices and renders to the SSD1306 OLED."
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://Makefile \
           file://main.cpp \
           "

S = "${WORKDIR}"

RDEPENDS:${PN} += "kernel-module-sht30-driver kernel-module-bh1750-driver kernel-module-ssd1306-driver"

do_compile() {
    oe_runmake
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${S}/env_monitor_app ${D}${bindir}/
}
