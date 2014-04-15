#!/bin/sh

sudo lsof -i udp:67 | grep bootpd | awk '{ print $2 }' | while read pid; do echo killing $pid; sudo kill -9 $pid && echo "successfull..."; done
