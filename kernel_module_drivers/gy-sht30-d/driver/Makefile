# Tên module (tệp .ko sẽ sinh ra)
obj-m := sht30_i2c_driver.o

# Đường dẫn tới thư mục build của kernel Yocto (đã chứa .config)
KDIR := /home/haidoan2098/workspace/yocto-bbb/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/linux-yocto/5.15.150+gitAUTOINC+578937826f_4fca0c4373-r0/linux-beaglebone_yocto-standard-build

# Thư mục hiện tại (chứa Makefile)
PWD := $(shell pwd)

# Thông tin kiến trúc và toolchain (phải đúng với SDK bạn đã source)
ARCH ?= arm
CROSS_COMPILE ?= arm-poky-linux-gnueabi-

# Target mặc định
all:
	$(MAKE) -C $(KDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

# Dọn dẹp file biên dịch
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
