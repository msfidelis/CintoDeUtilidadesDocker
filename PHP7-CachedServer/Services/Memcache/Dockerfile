FROM ubuntu:16.04
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apt-get update; apt-get install -y memcached

USER daemon
EXPOSE 11211

CMD ["memcached", "-m", "256"]