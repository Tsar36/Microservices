ARG OS_VERSION=22.04
FROM ubuntu:${OS_VERSION}
MAINTAINER seriy.tsar@gmail.com
RUN apt-get update
RUN apt-get install -y mysql-server
EXPOSE 3306
CMD ["/usr/bin/mysqld_safe"]
