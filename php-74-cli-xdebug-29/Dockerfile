FROM php:7.4
# Install PECL extensions
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.1
RUN docker-php-ext-enable xdebug