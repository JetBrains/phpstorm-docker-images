FROM ubuntu:latest

RUN export RUNLEVEL=1
RUN sed -i 's/101/0/g' /usr/sbin/policy-rc.d

RUN apt-get update

# Add the Expect scripts to the server
RUN apt-get install -y expect
RUN mkdir /escripts
ADD ./escripts/kdc*.sh /escripts/

# Install krb5-kdc and krb5-admin-server, configure the default realm
RUN expect /escripts/kdc1.sh
# Create a new realm and set the DB password
RUN expect /escripts/kdc2.sh
# Create a new admin user and set its password
RUN expect /escripts/kdc3.sh

# Make the admin user an actual admin
RUN sed -i "\$akrbadmin/admin *" /etc/krb5kdc/kadm5.acl
RUN service krb5-admin-server restart