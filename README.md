# hello-docker-compose-file-variable

## How to use
For `production-pseudo`
~~~sh
make -f docker.mk install
make -f docker.mk build
bin/docker-compose run --rm php-fpm bash
~~~

For `development`
~~~sh
make -f docker-dev.mk install
make -f docker-dev.mk build
bin/docker-compose-development run --rm php-fpm bash
~~~