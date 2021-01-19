FROM arm32v6/alpine:3.12
#FROM arm32v6/alpine:latest
MAINTAINER docker@intrepid.de

COPY push-mqtt.sh /opt/push-mqtt.sh

RUN passwd -l root ; \
    apk add --upgrade --update --no-cache \
      mosquitto-clients \
      bc \
      bash \
      openssl && \
    chmod 755 /opt/push-mqtt.sh

# Run the command on container startup
CMD /opt/push-mqtt.sh

