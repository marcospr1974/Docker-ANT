docker run -d \
  --hostname qvlnag00 \
  --name qvlnag00 \
  -v /opt/docker/qvlnag00/etc/nagios:/etc/nagios \
  -v /opt/docker/qvlnag00/etc/apache2:/etc/apache2 \
  -p 8090:80 \
  marcospr1974/alpine-nagios
