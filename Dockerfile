FROM ghcr.io/jochenvg/alpine:master
RUN apk add --no-cache \
    openssh \
    mosh

