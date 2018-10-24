FROM php:7.1

MAINTAINER maxim.kolmakov@jetbrains.com

# Install PECL extensions
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.7.0alpha1
RUN docker-php-ext-enable xdebug