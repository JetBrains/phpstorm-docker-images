This project contains a dockerized Kerberos infrastructure.

Prerequisites
-
* Some kind of a Linux system
* Docker
* Kerberos client

Description
-
The infrastructure consists of two containers:
* krb-kdc (Kerberos Key Distribution Center)
* krb-service (Service available via Kerberos)

krb-service currently has only Apache configured.

krb-kdc credentials are:
* Realm name: `krb` (should match the domain)
* Realm DB password: `q1234`
* The only user: `krbadmin/admin`:`q123` (It seems to be some kind of a convention that admin users should have this /admin appended).

Usage
-

First, run `docker-compose up`.

Then, you need to call the service with a certain domain name, so add the following lines to your /etc/hosts
```
10.17.18.1  kdc-krb.krb
10.17.18.2  kdc-service.krb
```
You also need to install and configure your Kerberos client, for Ubuntu it would be `apt-get install krb5-user krb5-config`.

You'll be asked for a default realm name (`krb`), a KDC server (`krb-kdc.krb`) and an admin server (the same).

Finally, you can obtain a ticket. Run `kinit krbadmin/admin` and enter the password. You can list tickets with `klist`.

Next, you need to add `.krb` as a trusted URI for your browser (Google it).

That's basically all, now you can open http://krb-service.krb and get the index page using the Kerberos authentication.