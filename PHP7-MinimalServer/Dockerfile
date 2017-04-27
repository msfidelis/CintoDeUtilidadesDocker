FROM alpine:3.3

MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apk update ;
RUN apk add --no-cache  \
    php7-xcache php7-intl php7-json php7-curl \
    php7-cli php7-opcache php7-phar php7-dom  \
    php7-openssl curl wget 

RUN mkdir /app
WORKDIR /app

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]