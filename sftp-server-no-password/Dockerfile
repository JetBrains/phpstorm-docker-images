FROM debian:jessie
MAINTAINER maxim.kolmakov@jetbrains.com

RUN apt-get update && \
    apt-get -y install openssh-server php5
RUN mkdir -p /var/run/sshd

RUN sed -i 's/PermitEmptyPasswords no/PermitEmptyPasswords yes/g' /etc/ssh/sshd_config

COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
