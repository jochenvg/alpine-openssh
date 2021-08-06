FROM ghcr.io/jochenvg/alpine:master
RUN apk add --no-cache \
    openssh \
    shadow \
    mosh
COPY . /
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22

