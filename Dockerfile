FROM ubuntu:latest

WORKDIR /app

RUN apt-get update -y &&\
    apt-get install apache2 -y
    
COPY . index.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]