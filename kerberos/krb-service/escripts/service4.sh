#!/bin/bash

# Add a principal for the HTTP service
expect /escripts/service2.sh;

# Add a keytab for HTTP
mkdir -p /etc/apache2/auth;
expect /escripts/service3.sh;
chown www-data:www-data /etc/apache2/auth/apache2.keytab;
chmod 400 /etc/apache2/auth/apache2.keytab;

cp -f /escripts/apache2.conf /etc/apache2/sites-enabled/000-default.conf;
service apache2 start;