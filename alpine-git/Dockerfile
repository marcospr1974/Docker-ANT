FROM alpine:latest

MAINTAINER Marcos Pablo Russo "centrux@gmail.com"

# Copio desde la maquina local al container
COPY repositories /etc/apk/

# Realizo un update y upgrade
# Crea un contenedor y pone esto
RUN apk update \
    && apk upgrade \
    && apk add \
	git \
	alpine-base \
	openssh \
	bash \
	&& rm /var/cache/apk/*

# Generamos la clave del servidor
RUN ssh-keygen -A

# Area de trabajo cuando ingreso
WORKDIR /git-server

RUN mkdir /git-server/keys \
    && adduser -D -s /usr/bin/git-shell git \
    && echo git:git | chpasswd \
    && mkdir /home/git/.ssh


COPY git-shell-commands /home/git/git-shell-commands

#COPY sshd_config /etc/ssh/sshd_config
COPY start.sh start.sh

EXPOSE 22

CMD ["sh", "start.sh"]
