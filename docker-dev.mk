.PHONY: help install dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	.env

dependencies:
	type docker > /dev/null
	type docker-compose > /dev/null

build: production-pseudo-base production-pseudo
	bin/docker-compose-development build

.env:
	touch $@

clean:
	rm -rf clea

.PHONY: production-pseudo-base production-pseudo
production-pseudo-base:
	TAG=$@ TARGET=$@ bin/docker-compose build

production-pseudo:
	TAG=$@ TARGET=$@ bin/docker-compose build
