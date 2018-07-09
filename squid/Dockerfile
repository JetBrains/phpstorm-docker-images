FROM ubuntu:latest
RUN apt update
RUN apt install -y squid
COPY ./squid.conf /etc/squid/squid.conf
COPY ./passwords /etc/squid/passwords