docker run -d \
  --link qvlweb00 \
  --link qvljoo00 \
  --link qvlnag00 \
  --hostname qvlwaf01 \
  --name qvlwaf01 \
  -p 8086:80 \
  -p 8087:443 \
  marcospr1974/alpine-waf
