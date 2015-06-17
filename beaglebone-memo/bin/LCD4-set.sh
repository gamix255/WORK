#!/bin/sh

#testing by beaglebone white
#readable and writable for fb device

cd /sys/devices/bone_capemgr.8
echo BB-BONE-LCD4-01 > slots
