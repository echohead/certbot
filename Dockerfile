FROM alpine:3.4
RUN apk add --no-cache certbot
ADD run-certbot-forever /bin/run-certbot-forever
EXPOSE 80
ENTRYPOINT ["/bin/run-certbot-forever"]
