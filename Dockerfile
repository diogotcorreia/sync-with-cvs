FROM alpine:3.16

RUN apk update && \
  apk add git cvs sshpass

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
