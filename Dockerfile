FROM centos
RUN yum -y install httpd
EXPOSE 80
ADD index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]
