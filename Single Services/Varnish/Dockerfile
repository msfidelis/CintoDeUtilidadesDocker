FROM ubuntu:16.04
MAINTAINER  Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get -y install varnish && \
  apt-get -y clean

COPY default.vcl /etc/varnish/default.vcl

ENV VARNISH_BACKEND_PORT 80
ENV VARNISH_BACKEND_IP 172.17.42.1
ENV VARNISH_PORT 80

RUN usermod -a -G varnish varnishlog
#RUN chown varnish:varnish /var/lib/varnish/ -R && chmod 777 /var/lib/varnish/ -R
EXPOSE 80

VOLUME /var/lib/varnish
VOLUME /etc/varnish

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
