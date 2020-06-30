ARG ELASTIC_VERSION="5.0.0"

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install analysis-phonetic

RUN mkdir /usr/share/elasticsearch/ && chmod 777 /usr/share/elasticsearch -R