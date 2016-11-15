FROM ubuntu:16.04
MAINTAINER <msfidelis01@gmail.com>

RUN touch /var/log/cron.log

RUN apt-get update \
    && apt-get -y install cron

CMD cron && tail -f /var/log/cron.log
