FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://envmon-i2c1-sensors.dtsi \
    file://envmon-spi1-oled.dtsi \
"

COMPATIBLE_MACHINE = "beaglebone-yocto"

# Nhét Device Tree của dự án vào cuối am335x-boneblack.dts trước khi build kernel.
# Kernel 6.x đã chuyển DTS của TI sang arch/arm/boot/dts/ti/omap/.
do_configure:prepend() {
    dts_dir="${S}/arch/arm/boot/dts/ti/omap"
    board_dts="${dts_dir}/am335x-boneblack.dts"

    install -m 0644 ${WORKDIR}/envmon-i2c1-sensors.dtsi ${dts_dir}/
    install -m 0644 ${WORKDIR}/envmon-spi1-oled.dtsi    ${dts_dir}/

    # do_configure có thể chạy lại nhiều lần -> chỉ nối một lần duy nhất
    if ! grep -q "envmon-i2c1-sensors.dtsi" ${board_dts}; then
        cat >> ${board_dts} <<EOF

/* ---- meta-envmon ---- */
#include "envmon-i2c1-sensors.dtsi"
#include "envmon-spi1-oled.dtsi"
EOF
    fi
}
