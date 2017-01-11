FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

ENV http_proxy=http://10.10.4.1:8080

COPY repositories /etc/apk/repositories
COPY haproxy.cfg /etc/haproxy/

RUN apk update && apk upgrade 
RUN apk add alpine-base bash vim haproxy && rm -rf /var/cache/apk/*

EXPOSE 80

VOLUME /etc/haproxy

CMD ["haproxy","-d","-f","/etc/haproxy/haproxy.cfg"]
