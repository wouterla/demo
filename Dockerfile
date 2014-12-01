FROM jacksoncage/apache
MAINTAINER Wouter Lagerweij <wouter@lagerweij.com>

ENV DEBIAN_FRONTEND noninteractive

# RUN sysctl net.ipv6.conf.all.disable_ipv6=1 && sysctl net.ipv6.conf.default.disable_ipv6=1 && sysctl net.ipv6.conf.lo.disable_ipv6=1

# RUN apt-get update && apt-get install -yq apache2

# Dutch locale
RUN locale-gen nl_NL.UTF-8

# Apache configuration
RUN echo "ServerName localhost" >> /etc/apache2/conf-enabled/hostname.conf

# 'deploy' our source code
ADD src/index.html /var/www/html/

CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
