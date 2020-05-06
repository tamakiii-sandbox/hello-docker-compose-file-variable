.PHONY: help install dependencies build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	.env

dependencies:
	type docker > /dev/null
	type docker-compose > /dev/null

build:
	bin/docker-compose build

.env:
	touch $@

clean:
	rm -rf clean