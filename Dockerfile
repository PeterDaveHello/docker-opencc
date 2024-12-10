FROM alpine:3.20

LABEL maintainer="Peter Dave Hello <hsu@peterdavehello.org>"
LABEL name="docker-opencc"

RUN apk add --no-cache opencc && opencc --version 1>&2
