FROM php:7.3
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install libzip-dev libicu-dev
RUN docker-php-ext-install mysqli zip intl
RUN pecl install xdebug-2.9.8
RUN docker-php-ext-enable xdebug