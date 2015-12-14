FROM jwilder/nginx-proxy
MAINTAINER Albert Dixon <albert@dixon.rocks>

RUN {\
      echo 'server_tokens         off;' \
      echo 'client_max_body_size  100m;' \
      echo 'tcp_nopush            on;' \
      echo 'tcp_nodelay           on;' \
      echo 'gzip                  on;' \
      echo 'gzip_comp_level       5;' \
      echo 'gzip_proxied          expired no-cache no-store private auth;' \
      echo 'gzip_min_length       128;' \
    } >/etc/nginx/conf.d/extra.conf