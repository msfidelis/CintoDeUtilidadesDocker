FROM alpine:latest
MAINTAINER Matheus Fidelis <msfidelis01@gmail.com>

RUN apk add --no-cache memcached

USER daemon
EXPOSE 11211

CMD ["memcached", "-m", "256"]
