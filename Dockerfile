FROM alpine:3.16

RUN apk update && \
  apk install git cvs

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
