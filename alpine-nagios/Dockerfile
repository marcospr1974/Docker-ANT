FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

ENV NAGIOS_HOME /etc/nagios
ENV NAGIOS_USER nagios
ENV NAGIOS_GROUP nagios
ENV NAGIOS_CMDUSER nagios
ENV NAGIOS_CMDGROUP nagios
ENV NAGIOSADMIN_USER nagiosadmin
ENV NAGIOSADMIN_PASS nagios
ENV APACHE_RUN_USER nagios
ENV APACHE_RUN_GROUP nagios
ENV NAGIOS_TIMEZONE UTC

COPY repositories /etc/apk/repositories

RUN apk update && apk upgrade 
RUN apk add alpine-base bash vim apache2 apache2-ssl apache2-utils \
	openssl \
        php7 php7-apache2 php7-pdo_mysql php7-gd php7-session php7-cgi \
	nagios nagios-web nagios-plugins nagios-plugins-icmp \
	nagios-plugins-dhcp nagios-plugins-tcp nagios-plugins-uptime \
	nagios-plugins-swap nagios-plugins-mysql nagios-plugins-ping \
	nagios-plugins-dns nagios-plugins-disk nagios-plugins-users \
	nagios-plugins-procs nagios-plugins-http nagios-plugins-ifstatus \
	nagios-plugins-nagios nagios-plugins-ntp nagios-plugins-dummy \
	nrpe nrpe-plugin && rm -rf /var/cache/apk/*

RUN mkdir -p /etc/apache2/ssl
RUN mkdir -p /run/apache2
RUN echo "nrpe            5666/tcp                        NRPE" > /etc/services

COPY httpd_nagios.sh /opt/httpd_nagios.sh

EXPOSE 80

VOLUME /etc/nagios
VOLUME /etc/apache2

CMD ["/opt/httpd_nagios.sh"]
