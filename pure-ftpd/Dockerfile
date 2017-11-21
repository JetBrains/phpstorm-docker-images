FROM ubuntu:17.10

RUN apt-get update && \
apt-get install pure-ftpd openssl libpam-dev libcap2-dev libldap2-dev libmysqlclient-dev default-libmysqlclient-dev libpq-dev libssl-dev po-debconf dpkg-dev debhelper -y
RUN mkdir /tmp/pure-ftpd/ && \
	cd /tmp/pure-ftpd/ && \
	apt-get source pure-ftpd && \
	cd pure-ftpd-* && \
	sed -i '/^optflags=/ s/$/ --without-capabilities/g' ./debian/rules && \
	dpkg-buildpackage -b -uc
RUN dpkg -i /tmp/pure-ftpd/pure-ftpd-common*.deb
RUN apt-get -y install openbsd-inetd
RUN dpkg -i /tmp/pure-ftpd/pure-ftpd_*.deb
RUN apt-mark hold pure-ftpd pure-ftpd-common

RUN cd /etc/pure-ftpd && \
mkdir /home/ftp && \
echo yes > ./conf/ChrootEveryone && \
echo yes > ./conf/DontResolve && \
echo yes > ./conf/NoChmod && \
echo yes > ./conf/ProhibitDotFilesWrite && \
echo yes > ./conf/CustomerProof && \
echo '30020 30029' > ./conf/PassivePortRange && \
echo ',21' > ./conf/Bind && \
echo '2' > ./conf/TLS

RUN groupadd ftpgroup
RUN useradd -g ftpgroup -d /home/ftpusers -s /dev/null ftpuser

ENV PUBLICHOST localhost

ADD pure-ftpd.pem /etc/ssl/private/pure-ftpd.pem

RUN (echo jetbrains; echo jetbrains) | pure-pw useradd jetbrains -u ftpuser -d /home/ftpusers/jetbrains
RUN pure-pw mkdb

EXPOSE 21 30020-30029
CMD /usr/sbin/pure-ftpd -l puredb:/etc/pure-ftpd/pureftpd.pdb -P $PASV_ADDRESS -x -u 30 -H -S ,21 -O clf:/var/log/pure-ftpd/transfer.log -Z -A -p 30020:30029 -E -R -8 UTF-8 -Y 2
