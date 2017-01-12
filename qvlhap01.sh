docker run -d \
  --link qvlwaf00 \
  --link qvlwaf01 \
  --hostname qvlhap01 \
  --name qvlhap01 \
  -p 8090:80 \
  --privileged \
  -e UCARP_SOURCEADDRESS=172.17.0.19 \
  -v /opt/docker/qvlhap00/etc/haproxy:/etc/haproxy \
  marcospr1974/alpine-haproxy 
