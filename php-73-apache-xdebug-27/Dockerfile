FROM php:7.3-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.7.0beta1
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini