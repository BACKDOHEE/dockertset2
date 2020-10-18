FROM ubuntu:14.04
MAINTAINER "test"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./index.html /var/www/htmlcp 
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
