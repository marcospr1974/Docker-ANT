docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf00 \
  --name qvlwaf00 \
  -v /opt/docker/qvlwaf00/var/www/localhost/htdocs:/var/www/localhost/htdocs \
  -p 8084:80 \
  marcospr1974/alpine-waf
