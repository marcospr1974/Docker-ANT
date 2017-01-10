FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

COPY repositories /etc/apk/repositories

RUN apk update && apk upgrade 
RUN apk add alpine-base bash vim apache2 apache2-proxy && rm -rf /var/cache/apk/*
RUN mkdir -p /run/apache2

EXPOSE 80

COPY httpd.conf /etc/apache2/httpd.conf

VOLUME /etc/apache2

CMD ["httpd", "-D","FOREGROUND"]
