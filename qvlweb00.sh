docker run -d \
  --link qvldba00 \
  --hostname qvlweb00 \
  --name qvlweb00 \
  -v /opt/docker/qvlweb00/var/www/localhost/htdocs:/var/www/localhost/htdocs \
  -p 8084:80 \
  marcospr1974/alpine-apache2
