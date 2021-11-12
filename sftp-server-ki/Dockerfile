FROM debian:stretch
MAINTAINER maxim.kolmakov@jetbrains.com

RUN apt-get update && \
    apt-get -y install openssh-server lsb-release apt-transport-https ca-certificates wget && \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list && \
    apt-get update && \
    apt-get -y install php7.3 php7.4 composer rsync
RUN mkdir -p /var/run/sshd

COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
