docker run -d \
  --link qvldba00 \
  --hostname qvljoo00 \
  --name qvljoo00 \
  -p 8083:80 \
  marcospr1974/alpine-joomla
