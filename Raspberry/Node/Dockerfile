FROM resin/rpi-raspbian:jessie

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get apt-get install nodejs npm -y  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80
EXPOSE 5858
EXPOSE 8080

STOPSIGNAL SIGTERM

ENTRYPOINT [ "node" ]