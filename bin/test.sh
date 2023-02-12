#!/bin/bash

# Reference: https://www.flashrom.org/RaspberryPi

/usr/sbin/flashrom \
	-p linux_spi:dev=/dev/spidev0.0,spispeed=1000
