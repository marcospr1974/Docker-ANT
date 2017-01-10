#!/bin/bash

docker run -d \
  --name qvldba00 \
  --hostname qvldba00 \
  -e MYSQL_ROOT_PASSWORD='debian' \
  -v /opt/docker/qvldba00/var/lib/mysql:/var/lib/mysql \
  -v /opt/docker/qvldba00/etc/mysql:/etc/mysql \
  -p 3306 \
  marcospr1974/alpine-mariadb
