#!/bin/bash

expect /escripts/add-http-princ.sh;
expect /escripts/add-http-keytab.sh;
chmod 777 /etc/krb5.keytab;

cp -f /escripts/apache2.conf /etc/apache2/sites-enabled/000-default.conf;
service apache2 start;

expect /escripts/add-ssh-princ.sh;
expect /escripts/add-ssh-keytab.sh;

service ssh start;