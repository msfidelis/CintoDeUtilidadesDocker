FROM alpine:3.3

MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apk --update add wget curl git php php-curl php-openssl php-json php-phar php-dom && rm /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

RUN mkdir /home/web
WORKDIR /home/web

CMD ["/usr/bin/composer", "update", "--ignore-platform-reqs"]
