#!/bin/sh
slattach -s 115200 -p cslip /dev/ttyPL1 &
sleep 1
/sbin/ifconfig sl0 192.168.42.2 pointopoint 192.168.42.1 up
sleep 1
/sbin/ifconfig eth0 2>/dev/null || route add default gw 192.168.42.1
