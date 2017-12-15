#!/usr/bin/expect -f

set timeout 120

spawn apt-get install -y krb5-user krb5-config

expect "Default Kerberos version 5 realm: "
send -- "krb\r"

expect "Kerberos servers for your realm: "
send -- "krb-kdc.krb\r"

expect "Administrative server for your Kerberos realm: "
send -- "krb-kdc.krb\r"

expect eof