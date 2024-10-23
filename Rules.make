
### PLATFORM CONFIG ###
#platform
PLATFORM=imx6ull_alpha_board
SOC=mx6

ARMV7=a7

# 指定默认配置文件
#u-boot machine
UBOOT_MACHINE=mx6ull_alpha_emmc_defconfig

MAKE_ALL_TARGETS?= u-boot

#Points to the root of the project
export PROJ_ROOT_PATH?=$(shell realpath ./)
export PROJ_BINARY_OUT?=$(PROJ_ROOT_PATH)/binarys

# 指定编译器路径，如果 ubuntu PATH 环境变量已指定可不用设置该变量
#Points to the root of the CROSS_COMPILE_PATH
# export CROSS_COMPILE_PATH?=/usr/local/arm/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/

#Set cross compilers
ifneq ($(CROSS_COMPILE_PATH),)
export CROSS_COMPILE=$(CROSS_COMPILE_PATH)/bin/arm-linux-gnueabihf-
else
export CROSS_COMPILE=arm-linux-gnueabihf-
endif

# The source directories for each component
UBOOT_SRC_DIR=$(shell find $(PROJ_ROOT_PATH) -maxdepth 1 -type d -name "ubootimx-*")

# The source build directories
UBOOT_A7_BUILD?=build
LINUX_KERNEL_BUILD?=build

