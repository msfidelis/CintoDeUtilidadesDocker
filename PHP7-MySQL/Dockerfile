FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com> 

#Libs do PHP7
RUN apt-get update ; apt-get install apache2 wget php7.0 libapache2-mod-php7.0 php7.0-fpm php7.0-mysql php7.0-json php7.0-ldap php7.0-zip php7.0-bcmath php7.0-curl php7.0-common php7.0-dba php7.0-gd php7.0-odbc -y;

#Composer
RUN apt-get install curl -y; curl -s -o /usr/local/bin/composer https://getcomposer.org/composer.phar && \
    chmod 0755 /usr/local/bin/composer

RUN a2enmod rewrite
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

VOLUME /var/www/html/
VOLUME /etc/apache2/sites-enabled/

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
