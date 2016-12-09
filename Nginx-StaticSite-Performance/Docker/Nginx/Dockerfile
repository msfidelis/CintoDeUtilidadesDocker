FROM nginx:latest
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN rm -f /etc/nginx/conf.d/*
COPY supervisord.conf /etc/supervisor/conf.d/

VOLUME ["/var/www", "/etc/nginx/conf.d"]
EXPOSE 80
