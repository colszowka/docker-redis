FROM colszowka/precise64:latest
MAINTAINER "Christoph Olszowka"

RUN adduser redis --gecos "" --disabled-password --home /redis && mkdir -p -m 700 /redis/data && chown redis:redis /redis/data
RUN add-apt-repository -y ppa:chris-lea/redis-server && apt-get update && apt-get install -y redis-server

USER redis