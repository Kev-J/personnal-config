#!/bin/sh

#ip=$(adb shell ifconfig wlan0 | awk '/wlan0: ip/ {print $3}')
ip=$(adb shell ifconfig wlan0 | awk '/inet addr/ {gsub("addr:", "", $2); print $2}')
adb tcpip 5555
sleep 5
adb connect $ip:5555
