#!/usr/bin/expect -f

set timeout 120

spawn krb5_newrealm

expect "Enter KDC database master key: "
send -- "q1234\r"

expect "Re-enter KDC database master key to verify: "
send -- "q1234\r"

expect eof