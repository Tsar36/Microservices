FROM amazonlinux

RUN yum -y update \
    yum -y install httpd \
    yum -y install php

COPY ./index.php /var/www/html/index.php
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80


# docker build -t myk8sapp .
# docker tag myk8sapp:latest Tsar36/k8s:latest
# docker login
# docker push appphp/k8s:latest
# docker run -it -p 1234:80 Tsar36/k8s:latest
# http://localhost:1234