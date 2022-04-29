FROM php:8.1-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-3.1.4
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini