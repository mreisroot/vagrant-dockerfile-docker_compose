FROM nginx:alpine

LABEL description="VIACEP WEBSERVICE"

RUN mkdir -p /var/www/html

ENV NGINX_CONF=/etc/nginx/conf.d/default.conf

COPY ./nginx.conf $NGINX_CONF

COPY ./api /var/www/html/site/

EXPOSE 80
