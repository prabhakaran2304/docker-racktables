FROM chialab/php:7.3-apache
LABEL MAINTAINER "prabhakaran V <prabhavarul@gmail.com>"

ARG RACKTABLES_VERSION=0.21.3

ADD https://github.com/RackTables/racktables/archive/RackTables-${RACKTABLES_VERSION}.tar.gz /tmp/
RUN tar --strip-components=1 -C /var/www -zxvf /tmp/RackTables-${RACKTABLES_VERSION}.tar.gz
RUN mv /var/www/wwwroot/* /var/www/html/
