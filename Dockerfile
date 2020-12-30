ARG ELASTIC_VERSION="7.10.1"

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install analysis-phonetic

ENV discovery.type=single-node
ENV xpack.security.enabled=false

COPY elasticconfig.yml /etc/elasticsearch/elasticsearch.yml

RUN mkdir -p /usr/share/elasticsearch/ && chmod 777 /usr/share/elasticsearch -R
