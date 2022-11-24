FROM php:7.2
COPY --from=composer:2.2 /usr/bin/composer /usr/bin/composer
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug