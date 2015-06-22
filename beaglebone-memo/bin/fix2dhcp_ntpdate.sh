#!/bin/sh

route del -net 0.0.0.0/0

dhclient eth0

sleep 3
ntpdate ntp.nict.jp
