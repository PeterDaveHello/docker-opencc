FROM alpine:3.20

LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"
LABEL name="docker-opencc"

RUN echo '@edge http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories
RUN apk add --no-cache opencc@edge && opencc --version 1>&2
