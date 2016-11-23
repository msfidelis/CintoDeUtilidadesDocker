FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

#EXECUTAMOS QUALQUER PROGRAMA NO LINUX COM O RUN
RUN ls -l
RUN who && uptime ; whoami

#INSTALAMOS TODAS AS DEPENDÊNCIAS DO NOSSO CONTAINER
#IMPORTANTE INSTALARMOS COM O FORCE TO YES (-y) POIS NÃO TEREMOS INTERAÇÃO COM O BUILD
RUN apt-get update; apt-get install apache2 -y

RUN rm -rf /var/lib/apt/lists/*; apt-get autoremove; apt-get autoclean; apt-get clean;

RUN a2enmod rewrite

#DEFINIMOS VARIÁVEIS DE AMBIENTE COM O ENV
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

#CRIAMOS VOLUMES
VOLUME /var/www/html/

#DEFINIMOS AS PORTAS EXPOSTAS
EXPOSE 80

#COMANDO QUE O CONTAINER IRÁ EXECUTAR QUANDO INICIAR
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
