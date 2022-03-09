FROM nginx:latest

COPY ./index.html /var/www/akshaypai.me/html/
COPY ./static /var/www/akshaypai.me/html/static
COPY ./assets /var/www/akshaypai.me/html/assets
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf