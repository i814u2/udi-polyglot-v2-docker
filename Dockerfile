# Learn something new everyday

FROM debian:stretch

LABEL org.opencontainers.image.source "https://github.com/i814u2/udi-polyglot-v2-docker"
LABEL org.opencontainers.image.description "Debian base, polyglot v2 docker image"

# 80 = HTTP, 443 = HTTPS, 3000 = Express server(dev), 4200 = Angular2 (dev)
EXPOSE 3000

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get -qqy install git python3-pip python3-dev python2.7-dev python-pip wget && apt-get clean

COPY start.sh /root/start.sh
VOLUME /opt/udi-polyglotv2

# Run Polyglot
CMD /root/start.sh
