# rpi-mqtt-CPUcore

Dockerfile to create a container for raspberry pi
Function is to that sends the RPi CPUcore temperature via MQTT to a broker every minute
(to be used in OpenHAB for example)

MQTT Port 8883 (SSL/TLS) is used by default. Change in the script push-mqtt.sh if you need an unsecure connection

start with:
docker run -d --name rpi-mqtt-cpucore -h <container-hostname> --add-host mqttbroker:<MQTT-broker-IP> intrepidde/rpi-mqtt-cpucore
or
docker run -d --name rpi-mqtt-cpucore --uts="host" --add-host="mqttbroker:<MQTT-broker-IP>" intrepidde/rpi-mqtt-cpucore

based on: resin/rpi-raspbian:jessie
