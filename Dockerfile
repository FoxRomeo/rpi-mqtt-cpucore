FROM resin/rpi-raspbian:jessie
MAINTAINER docker@intrepid.de

RUN apt-get -y update && \
apt-get -y install -qq --force-yes net-tools mosquitto-clients && \
apt-get clean -y && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD push-mqtt.sh /opt/push-mqtt.sh

RUN chmod 750 /opt/push-mqtt.sh

# Run the command on container startup
CMD /opt/push-mqtt.sh
