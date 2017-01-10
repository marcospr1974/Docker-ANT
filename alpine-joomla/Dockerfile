FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

COPY repositories /etc/apk/repositories

RUN apk update && apk upgrade 
RUN apk add alpine-base bash vim git \
	apache2 \
	php7 php7-apache2 php7-json php7-zlib php7-mcrypt php7-pdo_mysql php7-gd php7-session php7-xml php7-mbstring \
	&& rm -rf /var/cache/apk/*
RUN mkdir -p /run/apache2

RUN git clone https://github.com/joomla/joomla-cms.git /tmp/www
RUN rm  -rf /var/www/localhost/htdocs/*
RUN cp -r /tmp/www/* /var/www/localhost/htdocs/
RUN chown -R apache:apache /var/www/localhost/htdocs

EXPOSE 80

VOLUME /var/www/localhost/htdocs/

CMD ["httpd", "-D","FOREGROUND"]
