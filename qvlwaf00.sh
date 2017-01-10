docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf00 \
  --name qvlwaf00 \
  -p 80:80 \
  -v /opt/docker/qvlwaf00/etc/apache2:/etc/apache2 \
  marcospr1974/alpine-waf
