FROM php:7.4
COPY --from=composer /usr/bin/composer /usr/bin/composer
# Install PECL extensions
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.9.8
RUN docker-php-ext-enable xdebug