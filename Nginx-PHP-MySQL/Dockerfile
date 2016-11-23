FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update ; apt-get install nginx wget php7.0 php7.0-fpm php7.0-mysql \
  php7.0-json php7.0-xml php7.0-ldap php7.0-zip php7.0-bcmath php7.0-curl php7.0-common \
  php7.0-dba php7.0-gd php7.0-odbc -y;

#Composer
RUN apt-get install curl -y; curl -s -o /usr/local/bin/composer https://getcomposer.org/composer.phar && \
    chmod 0755 /usr/local/bin/composer

RUN rm -rf /var/lib/apt/lists/*; apt-get autoremove; apt-get autoclean; apt-get clean;

VOLUME /var/www/html/
VOLUME /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
