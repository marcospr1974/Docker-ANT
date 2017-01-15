docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf00 \
  --name qvlwaf00 \
  -p 8084:80 \
  -p 8085:443 \
  marcospr1974/alpine-waf
