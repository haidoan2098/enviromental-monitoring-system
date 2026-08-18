SUMMARY = "Image cho hệ thống giám sát môi trường trên BeagleBone Black"
LICENSE = "MIT"

require recipes-core/images/core-image-minimal.bb

IMAGE_INSTALL += " \
    bh1750-driver \
    sht30-driver \
    ssd1306-driver \
    env-monitor \
"
