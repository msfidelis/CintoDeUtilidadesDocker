FROM ubuntu:14.04

ENV ES_PKG_NAME elasticsearch-5.1.1

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
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz &&\
    tar xvzf elasticsearch-5.1.1.tar.gz && \
    rm -f elasticsearch-5.1.1.tar.gz && \
    mv elasticsearch-5.1.1 /elasticsearch

COPY etc/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

EXPOSE 9200
EXPOSE 9300
