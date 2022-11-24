FROM php:7.1-apache
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.6.0
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini