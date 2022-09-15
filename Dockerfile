FROM alpine:3.16

RUN apk update && \
  apk add git cvs sshpass

RUN mkdir -p /sync-with-cvs/clone

COPY entrypoint.sh /entrypoint.sh
COPY authenticated-ssh.sh /authenticated-ssh.sh

ENTRYPOINT ["/entrypoint.sh"]
