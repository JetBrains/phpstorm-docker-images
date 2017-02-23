FROM wildscamp/vsftpd

COPY vsftpd.pem /etc/vsftpd/

RUN echo "ssl_enable=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "allow_anon_ssl=NO" >> /etc/vsftpd/vsftpd.conf
RUN echo "force_local_data_ssl=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "force_local_logins_ssl=YES" >> /etc/vsftpd/vsftpd.conf

#Strict mode
RUN echo "ssl_tlsv1=YES" >> /etc/vsftpd/vsftpd.conf
RUN echo "ssl_sslv2=NO" >> /etc/vsftpd/vsftpd.conf
RUN echo "ssl_sslv3=NO" >> /etc/vsftpd/vsftpd.conf
RUN echo "require_ssl_reuse=NO" >> /etc/vsftpd/vsftpd.conf
RUN echo "ssl_ciphers=HIGH" >> /etc/vsftpd/vsftpd.conf

#Cert path
RUN echo "rsa_cert_file=/etc/vsftpd/vsftpd.pem" >>/etc/vsftpd/vsftpd.conf
RUN echo "rsa_private_key_file=/etc/vsftpd/vsftpd.pem" >> /etc/vsftpd/vsftpd.conf

