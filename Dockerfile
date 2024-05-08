FROM ubuntu:latest
LABEL maintainer="Ruthra Selvam"
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
RUN apt update && apt upgrade -y
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
