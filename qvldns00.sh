#!/bin/bash

docker run -d \
	--hostname qvldns00 \
	--name qvldns00 \
	-v /opt/docker/qvldns00/etc/bind:/etc/bind \
	-v /opt/docker/qvldns00/var/log/named/:/var/log/named \
	-v /opt/docker/qvldns00/var/bind:/var/bind \
	-p 53:53/udp -p 53:53/tcp \
	marcospr1974/alpine-bind9 

