#!/usr/bin/expect -f

set timeout 120

spawn kadmin.local -q "addprinc krbadmin/admin@krb"

expect "Enter password for principal \"krbadmin/admin@krb\": "
send -- "q123\r"

expect "Re-enter password for principal \"krbadmin/admin@krb\": "
send -- "q123\r"

expect eof