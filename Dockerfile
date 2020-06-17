FROM nginx

RUN apt-get update
RUN apt-get -y install certbot python-certbot-nginx

## Copy our default nginx config
COPY ./config/default.conf /etc/nginx/conf.d/

## Copy our default index.html
COPY ./app/index.html /usr/share/nginx/html/

EXPOSE 80
