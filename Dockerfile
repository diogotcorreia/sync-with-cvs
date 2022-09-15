FROM alpine:3.16

RUN apk update && \
  apk install -y git cvs

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
