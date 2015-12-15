FROM jwilder/nginx-proxy
MAINTAINER Albert Dixon <albert@dixon.rocks>
ADD extra.conf /etc/nginx/conf.d/
ADD force_ssl.conf /etc/nginx/vhost.d/default