#!/bin/bash

while true; do
/usr/bin/mosquitto_pub -h mqttbroker -p 8883 -i `/bin/hostname` -q 1 -t RPi/`/bin/hostname`/CPUcore -m "`echo $(( $(cat /sys/class/thermal/thermal_zone0/temp) / 1000 ))`"
sleep 60
done

exit 1