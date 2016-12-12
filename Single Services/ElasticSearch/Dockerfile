FROM ubuntu:14.04

ENV ES_PKG_NAME elasticsearch-1.7.3

RUN apt-get update && apt-get -y install software-properties-common

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 \
    select true | debconf-set-selections && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y oracle-java8-installer && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN \
    cd / && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
    tar xvzf $ES_PKG_NAME.tar.gz && \
    rm -f $ES_PKG_NAME.tar.gz && \
    mv /$ES_PKG_NAME /elasticsearch

#KOPF PRA AULINHA DO ALURA
RUN /elasticsearch/bin/plugin install lmenezes/elasticsearch-kopf/v2.1.2

COPY etc/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

EXPOSE 9200
EXPOSE 9300
