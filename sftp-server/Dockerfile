FROM debian:latest
MAINTAINER maxim.kolmakov@jetbrains.com

RUN apt-get update && apt-get -y install openssh-server curl tar wget php composer rsync
RUN mkdir -p /var/run/sshd

COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
