docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf00 \
  --name qvlwaf00 \
  -p 8081:80 \
  marcospr1974/alpine-waf
