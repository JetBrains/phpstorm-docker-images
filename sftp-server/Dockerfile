FROM debian:stretch
MAINTAINER maxim.kolmakov@jetbrains.com

RUN apt-get update && \
    apt-get -y install openssh-server php composer
RUN mkdir -p /var/run/sshd

COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
