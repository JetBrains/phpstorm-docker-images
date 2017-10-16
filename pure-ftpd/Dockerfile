FROM stilliard/pure-ftpd

ADD pure-ftpd.pem /etc/ssl/private/pure-ftpd.pem

RUN (echo jetbrains; echo jetbrains) | pure-pw useradd jetbrains -u ftpuser -d /home/ftpusers/jetbrains
RUN pure-pw mkdb

# Remove --tls=2 to get FTP
CMD /usr/sbin/pure-ftpd --tls=2 -c 30 -C 5 -P $PASV_ADDRESS -p 30020:30029 -l puredb:/etc/pure-ftpd/pureftpd.pdb -E -j