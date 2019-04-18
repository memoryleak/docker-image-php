7.1:
	docker build --file Dockerfile.7.1 --tag memoryleak/php:7.1-${TRAVIS_BUILD_NUMBER} --no-cache .
	docker tag memoryleak/php:7.1-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.1

7.1-fpm:
	docker build --file Dockerfile.7.1-fpm --tag memoryleak/php:7.1-fpm-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.1-fpm-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.1-fpm


7.1-fpm-xdebug:
	docker build --file Dockerfile.7.1-fpm-xdebug --tag memoryleak/php:7.1-fpm-xdebug-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.1-fpm-xdebug-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.1-fpm-xdebug

7.1-composer:
	docker build --file Dockerfile.7.1-composer --tag memoryleak/php:7.1-composer-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.1-composer-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.1-composer

7.1-xdebug:
	docker build --file Dockerfile.7.1-xdebug --tag memoryleak/php:7.1-xdebug-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.1-xdebug-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.1-xdebug

7.2:
	docker build --file Dockerfile.7.2 --tag memoryleak/php:7.2-${TRAVIS_BUILD_NUMBER} --no-cache .
	docker tag memoryleak/php:7.2-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.2

7.2-fpm:
	docker build --file Dockerfile.7.2-fpm --tag memoryleak/php:7.2-fpm-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.2-fpm-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.2-fpm


7.2-fpm-xdebug:
	docker build --file Dockerfile.7.2-fpm-xdebug --tag memoryleak/php:7.2-fpm-xdebug-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.2-fpm-xdebug-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.2-fpm-xdebug

7.2-composer:
	docker build --file Dockerfile.7.2-composer --tag memoryleak/php:7.2-composer-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.2-composer-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.2-composer

7.2-xdebug:
	docker build --file Dockerfile.7.2-xdebug --tag memoryleak/php:7.2-xdebug-${TRAVIS_BUILD_NUMBER} .
	docker tag memoryleak/php:7.2-xdebug-${TRAVIS_BUILD_NUMBER} memoryleak/php:7.2-xdebug

7.1-images: 7.1 7.1-fpm 7.1-fpm-xdebug 7.1-composer 7.1-xdebug
7.2-images: 7.2 7.2-fpm 7.2-fpm-xdebug 7.2-composer 7.2-xdebug