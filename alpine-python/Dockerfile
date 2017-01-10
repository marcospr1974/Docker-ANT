FROM alpine:latest

MAINTAINER "Marcos Pablo Russo version: 0.1"

COPY repositories /etc/apk/repositories

RUN apk update && apk upgrade 
RUN apk add py2-pip python2 vim bash
RUN rm -rf /var/cache/apk/*
RUN pip2 install Flask Flask-SQLAlchemy Flask-Auth docker dockerpty 

EXPOSE 5001

VOLUME /Sistemas

#CMD ["python", "/Sistemas/index.py"]
