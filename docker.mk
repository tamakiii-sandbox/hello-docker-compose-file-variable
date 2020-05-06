.PHONY: help install dependencies build build/% clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	.env

dependencies:
	type docker > /dev/null
	type docker-compose > /dev/null

.env:
	touch $@

build: \
	build/production-pseudo-base \
	build/production-pseudo

build/production-pseudo-base:
	TAG=$(@F) TARGET=$(@F) bin/docker-compose build

build/production-pseudo:
	TAG=$(@F) TARGET=$(@F) bin/docker-compose build

clean:
	rm -rf clean