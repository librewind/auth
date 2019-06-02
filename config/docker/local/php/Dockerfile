FROM php:7.3-fpm

ARG GOSU_VERSION=1.10

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libpq-dev \
        wget \
    && docker-php-ext-install pdo_pgsql \
    && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" \
    && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" \
    && chmod +x /usr/local/bin/gosu
