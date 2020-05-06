FROM php:7.4.5-fpm AS production-pseudo-base

WORKDIR /usr/local/app/hello-docker-compose-file-variable/api

COPY --from=composer:1.10.5 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      make \
      git \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

# --

FROM production-pseudo-base AS production-pseudo

COPY . /usr/local/app/hello-docker-compose-file-variable/api