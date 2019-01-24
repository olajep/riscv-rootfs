#!/bin/sh
slattach -s 115200 -p cslip /dev/ttyS1 &
/sbin/ifconfig sl0 192.168.42.2 pointopoint 192.168.42.1 up
/sbin/ifconfig eth0 2>/dev/null || route add default gw 192.168.168.42.1
