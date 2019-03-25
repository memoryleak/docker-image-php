#!/bin/bash
set -o errexit
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push memoryleak/php:7.1
docker push memoryleak/php:7.1-fpm
docker push memoryleak/php:7.1-fpm-xdebug
docker push memoryleak/php:7.1-composer