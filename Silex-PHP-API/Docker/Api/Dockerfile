FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update ; \
  apt-get install wget php7.0 libapache2-mod-php7.0 php7.0-fpm \
  php7.0-mysql php7.0-json php7.0-ldap php7.0-zip php7.0-bcmath php7.0-curl \
  php7.0-common php7.0-dba php7.0-gd php7.0-odbc php7.0-xml -y;

RUN apt-get install build-essential libmemcached-dev php-memcache -y;

RUN apt-get install phpunit -y;

#Descomentar caso for usar o Blackfire no projeto
#RUN apt-get install --only-upgrade blackfire-agent blackfire-php -y

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /var/www/html/

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/"]
