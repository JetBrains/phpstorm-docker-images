FROM php:5.6

MAINTAINER maxim.kolmakov@jetbrains.com

# Install PECL extensions
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.5.0
RUN docker-php-ext-enable xdebug