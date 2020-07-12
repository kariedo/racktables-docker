FROM nginx:stable-alpine

COPY 30-generate-self-signed-tls-cert.sh /docker-entrypoint.d
RUN apk add --no-cache openssl

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]