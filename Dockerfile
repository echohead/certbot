FROM alpine:3.4
RUN apk add --no-cache certbot
COPY crontab.txt /crontab.txt
COPY run-certbot /run-certbot
COPY entrypoint /entrypoint
RUN /usr/bin/crontab /crontab.txt
VOLUME /etc/letsencrypt
EXPOSE 80
ENTRYPOINT ["/entrypoint"]
