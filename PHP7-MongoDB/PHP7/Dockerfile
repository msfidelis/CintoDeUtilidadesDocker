FROM ubuntu:16.04

MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update ; \
  apt-get install wget php7.0 libapache2-mod-php7.0 php7.0-fpm \
  php7.0-mysql php7.0-json php7.0-ldap php7.0-zip php7.0-bcmath php7.0-curl \
  php7.0-common php7.0-dba php7.0-gd php7.0-odbc php7.0-xml  php-pear php7.0-dev -y;

RUN mkdir -p /usr/local/openssl/include/openssl/ && \
    ln -s /usr/include/openssl/evp.h /usr/local/openssl/include/openssl/evp.h && \
    mkdir -p /usr/local/openssl/lib/ && \
    ln -s /usr/lib/x86_64-linux-gnu/libssl.a /usr/local/openssl/lib/libssl.a && \
    ln -s /usr/lib/x86_64-linux-gnu/libssl.so /usr/local/openssl/lib/


RUN pecl install mongodb

RUN echo "extension=mongodb.so" > /etc/php/7.0/fpm/conf.d/20-mongodb.ini && \
    echo "extension=mongodb.so" > /etc/php/7.0/cli/conf.d/20-mongodb.ini && \
    echo "extension=mongodb.so" > /etc/php/7.0/mods-available/mongodb.ini

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/www/html/

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/"]
