ARG ELASTIC_VERSION="6.8.2"

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELASTIC_VERSION}

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install analysis-phonetic
