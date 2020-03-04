FROM alpine:3.11

LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"
LABEL name="docker-opencc"

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
RUN apk add --no-cache opencc@edge && opencc --version 1>&2
