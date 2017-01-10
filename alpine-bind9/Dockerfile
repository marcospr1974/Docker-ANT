FROM alpine:latest

MAINTAINER Marcos Pablo Russo "centrux@gmail.com"

# Expone los puertos
EXPOSE 53

# Copio desde la maquina local al container
COPY repositories /etc/apk/

# Realizo un update y upgrade
# Crea un contenedor y pone esto
RUN apk update \
    && apk upgrade \
    && apk add \
	bind \
	alpine-base \
	openssh \
	rpcbind \
	bind-tools \
	bash \
	&& rm /var/cache/apk/*

# Area de trabajo cuando ingreso
WORKDIR /etc/bind

# Monto el volumen /opt/docker/etc/bind al contenedor /etc/bind
VOLUME ["/etc/bind","/var/log/named","/var/bind"]

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-g", "-u", "named", "-4"]
