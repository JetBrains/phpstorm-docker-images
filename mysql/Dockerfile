FROM mysql/mysql-server:latest

ENV MYSQL_ALLOW_EMPTY_PASSWORD="yes"
ENV MYSQL_DATABASE=jetbrains
ENV MYSQL_ROOT_PASSWORD=jetbrains
COPY setup.sql /docker-entrypoint-initdb.d/