FROM php:7.4
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install libzip-dev libicu-dev
# Install PECL extensions
RUN docker-php-ext-install mysqli zip intl
RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug