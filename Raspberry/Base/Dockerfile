FROM resin/rpi-raspbian:jessie

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/sh"]