7.1:
	docker build --file Dockerfile.7.1 --tag memoryleak/php:7.1 .

7.1-fpm:
	docker build --file Dockerfile.7.1-fpm --tag memoryleak/php:7.1-fpm .

7.1-fpm-xdebug:
	docker build --file Dockerfile.7.1-fpm-xdebug --tag memoryleak/php:7.1-fpm-xdebug .

7.1-composer:
	docker build --file Dockerfile.7.1-composer --tag memoryleak/php:7.1-composer .


all: 7.1 7.1-fpm 7.1-fpm-xdebug 7.1-composer
php: 7.1
composer: 7.1-composer
fpm: 7.1-fpm
xdebug: 7.1-fpm-xdebug