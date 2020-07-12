#!/bin/sh
set -e

cd /etc/nginx
openssl ecparam -out /etc/nginx/ssl-nginx.key -name prime256v1 -genkey
openssl req -new -sha256 -nodes -subj "/C=TS/ST=TEST/L=TEST/O=local/CN=local" -key /etc/nginx/ssl-nginx.key -out /etc/nginx/ssl-nginx.csr
openssl req -x509 -sha256 -days 3650 -key /etc/nginx/ssl-nginx.key -in /etc/nginx/ssl-nginx.csr -out /etc/nginx/ssl-nginx.crt
