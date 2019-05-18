FROM arm32v6/alpine:latest
MAINTAINER docker@intrepid.de

RUN apk add --update --no-cache mosquitto-clients bc bash openssl strace

# ADD push-mqtt.sh /opt/push-mqtt.sh
# RUN chmod 750 /opt/push-mqtt.sh
COPY push-mqtt.sh /opt/push-mqtt.sh

# Run the command on container startup
CMD /opt/push-mqtt.sh

