# rpi-mqtt-cpucore
<a href="https://hub.docker.com/r/intrepidde/rpi-mqtt-cpucore"><img src="https://img.shields.io/docker/pulls/intrepidde/rpi-mqtt-cpucore.svg?style=plastic&logo=appveyor" alt="Docker pulls"/></a><br>
Raspberry Pi (RPi) Docker container with mosquitto_pub
(arm32v6 aka RPi A/B/B+ and later)

Sends the CPUcore temperature of a RPi via MQTT to a broker every minute
(to be used in OpenHAB and other smart home setups for example)

create environment file containing:
MQTTBROKER=<hostname of your broker>
MQTTPORT=1883
MQTTBASE=<MQTT Base Path>
MQTTPARAMETER=<other Parameters or empty>

start with:
docker run -d --restart=unless-stopped --name rpi-mqtt-cpucore -h <container-hostname> --env-file <path-to-env-file> intrepidde/rpi-mqtt-cpucore:1.1
or
docker run -d --restart=unless-stopped --name rpi-mqtt-cpucore --uts="host" --env-file <path-to-env-file> intrepidde/rpi-mqtt-cpucore:1.1

Add "-v <local path>:<container path>" to command line (example: "-v /etc/ssl/certs:/etc/ssl/certs"),
in env file MQTTPARAMETER=--cafile /etc/ssl/certs/<your ca-file> --tls-version tlsv1.1
(WITHOUT quotation!) and change port to 8883

based on: arm32v6/alpine:3.12 using mosquitto_pub
(alpine:latest not useable on every RPi because of security changes)(2021/02)

https://github.com/FoxRomeo/rpi-mqtt-cpucore
