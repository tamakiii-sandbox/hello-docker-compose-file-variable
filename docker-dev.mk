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
	build/production-pseudo \
	build/development

build/development:
	TAG=$(@F) TARGET=$(@F) bin/docker-compose-development build

build/production-pseudo-base:
	$(MAKE) -f docker.mk $@

build/production-pseudo:
	$(MAKE) -f docker.mk $@

clean:
	rm -rf .env
