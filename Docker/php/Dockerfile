FROM amazonlinux

RUN <<EOF
    yum -y update
    yum -y install httpd
    yum -y install php
    echo "ServerName 127.0.0.1" >> /etc/httpd/conf/httpd.conf
EOF
COPY ./index.php /var/www/html/index.php
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80