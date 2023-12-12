FROM php:8.3-apache
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install libzip-dev libicu-dev
RUN docker-php-ext-install mysqli zip intl
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
