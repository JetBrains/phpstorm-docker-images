#!/usr/bin/expect -f

set timeout 120

spawn kadmin -p krbadmin/admin -q "ktadd -k /etc/apache2/auth/apache2.keytab HTTP/krb-service.krb"

expect "Password for krbadmin/admin@krb: "
send -- "q123\r"

expect eof