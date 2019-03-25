#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push memoryleak/php:7.1-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-fpm-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-fpm-xdebug-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-composer-$TRAVIS_BUILD_NUMBER

docker tag memoryleak/php:7.1-$TRAVIS_BUILD_NUMBER memoryleak/php:7.1
docker tag memoryleak/php:7.1-fpm-$TRAVIS_BUILD_NUMBER memoryleak/php:7.1-fpm
docker tag memoryleak/php:7.1-fpm-xdebug-$TRAVIS_BUILD_NUMBER memoryleak/php:7.1-fpm-xdebug
docker tag memoryleak/php:7.1-composer-$TRAVIS_BUILD_NUMBER memoryleak/php:7.1-composer

docker push memoryleak/php:7.1-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-fpm-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-fpm-xdebug-$TRAVIS_BUILD_NUMBER
docker push memoryleak/php:7.1-composer-$TRAVIS_BUILD_NUMBER