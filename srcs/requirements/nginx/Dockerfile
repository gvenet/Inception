FROM alpine:3.13

RUN apk add --update nginx openssl

RUN rm -rf /var/cache/apk/*

EXPOSE 443

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/gvenet.pem -keyout /etc/nginx/ssl/gvenet.key -subj "/C=FR/ST=Lyon/L=Lyon/O=42 School/OU=gvenet/CN=gvenet/"

# nginx config
RUN mkdir -p /run/nginx
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]