#!/bin/bash

#require adb command from android-tools-adb
#testing by debian 7 and beaglebone

adb shell settings put global tether_dun_apn IIJmio,iijmio.jp,,,mio@iij,iij,,,,,440,10,3,*
