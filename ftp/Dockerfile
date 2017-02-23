FROM wildscamp/vsftpd

RUN sed -i 's/anonymous_enable=NO/anonymous_enable=YES/' /etc/vsftpd/vsftpd.conf
RUN echo 'no_anon_password=YES' >> /etc/vsftpd/vsftpd.conf
RUN echo 'anon_root=/home/virtual/jetbrains' >> /etc/vsftpd/vsftpd.conf