docker run -d \
  --link qvldba00 \
  --hostname qvljoo00 \
  --name qvljoo00 \
  -v /opt/docker/qvljoo00/var/www/localhost/htdocs:/var/www/localhost/htdocs \
  -p 8089:80 \
  marcospr1974/alpine-apache2
