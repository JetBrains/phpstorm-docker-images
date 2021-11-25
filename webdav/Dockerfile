FROM php:8.0-apache
RUN a2enmod dav && a2enmod dav_fs && a2enmod auth_digest
RUN mkdir /var/www/webdav
RUN mkdir -p /usr/local/apache/var/
ADD ./apache.conf /etc/apache2/sites-enabled/000-default.conf
ADD ./users.password /usr/local/apache/var/users.password