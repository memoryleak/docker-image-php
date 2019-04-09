7.1:
	docker build --file Dockerfile.7.1 --tag memoryleak/php:7.1-${TRAVIS_BUILD_NUMBER} --no-cache .

7.1-fpm:
	docker build --file Dockerfile.7.1-fpm --tag memoryleak/php:7.1-fpm-${TRAVIS_BUILD_NUMBER} .

7.1-fpm-xdebug:
	docker build --file Dockerfile.7.1-fpm-xdebug --tag memoryleak/php:7.1-fpm-xdebug-${TRAVIS_BUILD_NUMBER} .

7.1-composer:
	docker build --file Dockerfile.7.1-composer --tag memoryleak/php:7.1-composer-${TRAVIS_BUILD_NUMBER} .

7.1-xdebug:
	docker build --file Dockerfile.7.1-xdebug --tag memoryleak/php:7.1-xdebug-${TRAVIS_BUILD_NUMBER} .


all: 7.1 7.1-fpm 7.1-fpm-xdebug 7.1-composer 7.1-xdebug
php: 7.1
composer: 7.1-composer
fpm: 7.1-fpm
fpm-xdebug: 7.1-fpm-xdebug
xdebug: 7.1-xdebug
