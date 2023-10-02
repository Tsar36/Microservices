ARG OS_VERSION=22.04
FROM UBUNTU:${OS_VERSION}
MAINTAINER seriy.tsar@gmail.com
RUN apt-get update
RUN apt-get install -y MySQL-server
EXPOSE 3306
CMD ["/usr/bin/MySQLd_safe"]
