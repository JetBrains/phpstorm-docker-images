FROM debian:unstable

RUN apt-get update && \
    apt-get install -y openssl && \
    apt-get install -y proftpd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD proftpd.pem /etc/proftpd/proftpd.pem

RUN useradd userftp -u 1001 -d /home/FTP-shared -s /bin/false
RUN (echo jetbrains; echo jetbrains) | passwd userftp
RUN mkdir /home/FTP-shared

COPY proftpd.conf /etc/proftpd/

ARG PASV_ADDRESS
RUN echo "MasqueradeAddress $PASV_ADDRESS" >>  /etc/proftpd/proftpd.conf


CMD ["proftpd", "-n"]