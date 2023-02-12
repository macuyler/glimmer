#!/bin/bash

# Reference: https://www.flashrom.org/RaspberryPi

CHIP="W25Q64.W"
ROM="./roms/coreboot_tiano-glimmer-mrchromebox_20210725.rom"

/usr/sbin/flashrom \
	-p linux_spi:dev=/dev/spidev0.0,spispeed=1000 \
	-c $CHIP \
	-w $ROM
