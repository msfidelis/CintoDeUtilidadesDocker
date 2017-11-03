FROM resin/rpi-raspbian:jessie

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get apt-get install nginx -y  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]