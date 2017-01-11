FROM ubuntu:16.04
MAINTAINER  Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update -qq && \
  apt-get upgrade -yqq && \
  apt-get -yqq install varnish && \
  apt-get -yqq clean

COPY default.vcl /etc/varnish/default.vcl

ENV VARNISH_BACKEND_PORT 80
ENV VARNISH_BACKEND_IP 172.17.42.1
ENV VARNISH_PORT 80

EXPOSE 80

VOLUME /var/lib/varnish
VOLUME /etc/varnish

COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
