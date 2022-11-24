FROM php:7.4-apache
COPY --from=composer /usr/bin/composer /usr/bin/composer
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.8
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini