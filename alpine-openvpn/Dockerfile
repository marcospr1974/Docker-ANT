FROM alpine:latest

MAINTAINER Marcos Pablo Russo "centrux@gmail.com"

# Copio desde la maquina local al container
COPY repositories /etc/apk/

# Realizo un update y upgrade
# Crea un contenedor y pone esto
RUN apk update \
    && apk upgrade \
    && apk add \
	openvpn openvpn-doc iptables easy-rsa openvpn-auth-pam pamtester google-authenticator \
	alpine-base \
	openssh \
	bash && \
	rm /var/cache/apk/* && \
    	ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin

# Needed by scripts
ENV OPENVPN /etc/openvpn
ENV EASYRSA /usr/share/easy-rsa
ENV EASYRSA_PKI $OPENVPN/pki
ENV EASYRSA_VARS_FILE $OPENVPN/vars

# Monto el volumen /opt/docker/etc/bind al contenedor /etc/bind
VOLUME ["/etc/openvpn"]

# Internally uses port 1194/udp, remap using `docker run -p 443:1194/tcp`
EXPOSE 1194/udp

#ADD ./bin /usr/local/bin
#RUN chmod a+x /usr/local/bin/*

# Add support for OTP authentication using a PAM module
ADD openvpn /etc/pam.d/

#CMD ["ovpn_run"]

