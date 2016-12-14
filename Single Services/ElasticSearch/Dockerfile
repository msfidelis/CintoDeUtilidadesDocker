FROM ubuntu:14.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common && add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    (echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections) && \
    apt-get install --no-install-recommends -y oracle-java8-installer && \
    rm -rf /var/cache/oracle-jdk8-installer && \
    echo "networkaddress.cache.ttl=60" >> /usr/lib/jvm/java-8-oracle/jre/lib/security/java.security && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN groupadd -g 1000 elasticsearch && useradd elasticsearch -u 1000 -g 1000

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 && \
    add-apt-repository -y "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" --keyserver https://pgp.mit.edu/ && \
    apt-get update && \
    apt-get install -y --no-install-recommends elasticsearch

#WORKDIR /usr/share/elasticsearch

RUN set -ex && for path in data logs config config/scripts; do \
        mkdir -p "$path"; \
        chown -R elasticsearch:elasticsearch "$path"; \
    done

COPY ./etc/logging.yml /usr/share/elasticsearch/config/
COPY ./etc/elasticsearch.yml /usr/share/elasticsearch/config/
COPY ./etc/docker-entrypoint.sh /

RUN chmod 777 data -R
RUN chown elasticsearch:elasticsearch data -R
RUN mkdir /usr/share/elasticsearch/config/scripts && chmod 777 /usr/share/elasticsearch/config/scripts
RUN chmod 777 /docker-entrypoint.sh


USER elasticsearch
ENV PATH=$PATH:/usr/share/elasticsearch/bin

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
EXPOSE 9200 9300
