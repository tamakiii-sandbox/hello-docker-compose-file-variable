FROM hello-docker-compose-file-variable_php-fpm:production-pseudo-base

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      make \
      bash \
      git \
      procps \
      less \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

COPY . /usr/local/app/hello-docker-compose-file-variable/api