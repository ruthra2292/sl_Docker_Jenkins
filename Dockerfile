FROM redhat/ubi8

LABEL maintainer="ruthra_selvam"

RUN yum -y install httpd

COPY index.html /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
