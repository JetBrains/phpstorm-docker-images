FROM debian:jessie
MAINTAINER maxim.kolmakov@jetbrains.com

RUN apt-get update && \
    apt-get -y install openssh-server
RUN mkdir -p /var/run/sshd

COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
