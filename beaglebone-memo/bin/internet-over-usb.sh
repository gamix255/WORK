#!/bin/sh

route del -net 0.0.0.0/0

route add default gw 192.168.7.1


sleep 3
ntpdate ntp.nict.jp
