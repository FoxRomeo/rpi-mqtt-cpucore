#!/bin/bash

HOSTNAME=`hostname`

while true; do
 /usr/bin/mosquitto_pub -h $MQTTBROKER -p $MQTTPORT -i $HOSTNAME -q 1 -t $MQTTBASE/$HOSTNAME/CPUcore $MQTTPARAMETER -m "`echo $(( $(cat /sys/class/thermal/thermal_zone0/temp) / 1000 ))`"
 sleep 60
done

exit 1