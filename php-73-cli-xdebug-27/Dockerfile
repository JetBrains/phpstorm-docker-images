FROM php:7.3

MAINTAINER maxim.kolmakov@jetbrains.com

# Install PECL extensions
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.7.0beta1
RUN docker-php-ext-enable xdebug