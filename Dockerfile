FROM: centos:7
LABEL: maintainer="our awesome teacher"
RUN yum -y update && yum clean all
RUN yum install -y httpd
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D," "FOREGROUND"]