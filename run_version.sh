#!/bin/bash

VERSION=`docker run -t $1 ${COMMANDSHELL} -c "mosquitto_pub --help | grep 'mosquitto_pub version' | sed -e s/'^mosquitto_pub version '// | sed -e s/' running on .*$'//" | sed -e 's/\r//' | sed -e 's/\n//'`

echo ${VERSION}