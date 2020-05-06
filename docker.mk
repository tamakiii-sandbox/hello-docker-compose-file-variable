.PHONY: help install dependencies build clean

export DOCKER_BUILDKIT := 1
export COMPOSE_DOCKER_CLI_BUILD := 1
export COMPOSE_FILE := docker-compose.yml

OPTIONS :=

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	dependencies \
	.env

dependencies:
	type docker > /dev/null
	type docker-compose > /dev/null

build up down:
	$(call DOCKER_COMPOSE,$@,$(OPTIONS))

.env:
	touch $@

clean:
	rm -rf clean

define DOCKER_COMPOSE
		docker-compose $1 $2
endef