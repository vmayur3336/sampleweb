FROM ubuntu

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install tzdata -y
RUN apt-get install apache2 -y
ADD . /var/www/html

ENTRYPOINT apachectl -D FOREGROUND

ENV name Teslamotors
