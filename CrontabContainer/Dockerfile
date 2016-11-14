FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN touch /home/cron.log

RUN apt-get update ; \
  apt-get install cron -y

VOLUME /etc/cron.d/

CMD ["cron", "-f"]