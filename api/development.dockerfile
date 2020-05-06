FROM hello-docker-compose-file-variable_php-fpm:production-pseudo-base AS development-base

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      bash \
      procps \
      less \
      && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/

# --

FROM development-base AS development

COPY . /usr/local/app/hello-docker-compose-file-variable/api