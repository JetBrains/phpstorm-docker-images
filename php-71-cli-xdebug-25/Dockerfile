FROM php:7.1
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
RUN apt-get update && apt-get -y install libzip-dev libicu-dev
MAINTAINER maxim.kolmakov@jetbrains.com

# Install PECL extensions
RUN docker-php-ext-install mysqli zip intl
RUN pecl install xdebug-2.5.5
RUN docker-php-ext-enable xdebug