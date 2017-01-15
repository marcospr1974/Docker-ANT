docker run -d \
  --link qvlwaf00 \
  --link qvlwaf01 \
  --hostname qvlhap00 \
  --name qvlhap00 \
  --privileged  \
  -p 8080:80 \
  -p 8081:443 \
  -v /opt/docker/qvlhap00/etc/haproxy:/etc/haproxy \
  marcospr1974/alpine-haproxy 
