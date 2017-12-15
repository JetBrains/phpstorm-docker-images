#!/usr/bin/expect -f

set timeout 120

spawn kadmin -p krbadmin/admin -q "addprinc -randkey HTTP/krb-service.krb"

expect "Password for krbadmin/admin@krb: "
send -- "q123\r"

expect eof