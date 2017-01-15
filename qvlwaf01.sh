docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf01 \
  --name qvlwaf01 \
  -v /opt/docker/qvlwaf01/etc/apache2:/etc/apache2 \
  -v /opt/docker/qvlwaf01/var/www/localhost/htdocs:/var/www/localhost/htdocs \
  -p 8086:80 \
  marcospr1974/alpine-waf
