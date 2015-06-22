#!/bin/sh

echo "Asia/Tokyo" > /etc/timezone    
dpkg-reconfigure -f noninteractive tzdata
