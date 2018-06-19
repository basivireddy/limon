FROM ubuntu:14.04
MAINTAINER d.basivireddy@gmail.com
RUN apt-get update && apt-get install -y apache2 php5 sshpass rpm supervisor
RUN mkdir /var/www/html/limon/
ADD . /var/www/html/limon/
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
WORKDIR /var/www/html/limon/backend/
VOLUME ["/var/log/"]
EXPOSE 80
CMD "/usr/bin/supervisord"
