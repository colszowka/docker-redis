FROM colszowka/precise64:latest
MAINTAINER "Christoph Olszowka"

RUN adduser redis --gecos "" --disabled-password --home /redis
RUN add-apt-repository -y ppa:chris-lea/redis-server && apt-get update
RUN apt-get install -y redis-server

VOLUME /redis/data
RUN chown redis:redis /redis/data

USER redis