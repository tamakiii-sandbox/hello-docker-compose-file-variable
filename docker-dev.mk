.PHONY: production-pseudo-base production-pseudo

include docker.mk

build: production-pseudo-base production-pseudo
	bin/docker-compose-development build

production-pseudo-base:
	TAG=$@ TARGET=$@ bin/docker-compose build

production-pseudo:
	TAG=$@ TARGET=$@ bin/docker-compose build
