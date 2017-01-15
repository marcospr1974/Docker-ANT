FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

#ENV http_proxy="http://10.10.4.1:8080"

COPY repositories /etc/apk/repositories

RUN apk update && apk upgrade 
RUN apk add alpine-base bash vim apache2 apache2-ssl apache2-proxy apache2-utils && rm -rf /var/cache/apk/*
RUN mkdir -p /run/apache2

#COPY httpd.conf /etc/apache2/
#COPY qvlwaf00.conf ssl.conf /etc/apache2/conf.d/

EXPOSE 80 
#EXPOSE 80 443

VOLUME /etc/apache2


CMD ["httpd", "-D","FOREGROUND"]
