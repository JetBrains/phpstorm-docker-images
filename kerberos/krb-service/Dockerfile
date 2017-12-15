FROM ubuntu:latest

RUN export RUNLEVEL=1
RUN sed -i 's/101/0/g' /usr/sbin/policy-rc.d

RUN apt-get update

# Add the Expect scripts to the server
RUN apt-get install -y expect
RUN mkdir /escripts
ADD ./escripts/service*.sh /escripts/
# Add the Apache config
ADD ./escripts/apache2.conf /escripts/apache2.conf

# Install krb5-user and krb5-config, configure the default realm
RUN expect /escripts/service1.sh

RUN apt-get install -y apache2 libapache2-mod-auth-kerb

# service4.sh (using 2 and 3) adds an HTTP principal and its keytab
# Runs only when instantiating both containers as network is necessary at this point