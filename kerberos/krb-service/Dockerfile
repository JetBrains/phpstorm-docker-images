FROM ubuntu:latest

RUN export RUNLEVEL=1
RUN sed -i 's/101/0/g' /usr/sbin/policy-rc.d

RUN apt-get update

# Add the Expect scripts to the server
RUN apt-get install -y expect
RUN mkdir /escripts
ADD ./escripts/*.sh /escripts/
# Add the Apache config
ADD ./escripts/apache2.conf /escripts/apache2.conf

# Install krb5-user and krb5-config, configure the default realm
RUN expect /escripts/install-krb.sh

RUN apt-get install -y apache2 libapache2-mod-auth-kerb
RUN apt-get install -y openssh-server

# Enable GSSAPI in sshd_config
RUN echo "GSSAPIAuthentication yes" >> /etc/ssh/sshd_config

# Map the Kerberos account to the local root account
RUN echo "krbadmin/admin@krb" > /root/.k5login

# maintenence.sh adds an HTTP and SSH principal and its keytab, configures Apache and starts services
# Runs only when instantiating both containers as network is necessary at this point