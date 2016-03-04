FROM alpine:edge
MAINTAINER Florian Maier <contact@marsmenschen.com>

ENV REFRESHED_AT 2016-03-03
ENV RADARE_VERSION 0.10.1-r0

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk add --update --no-cache radare2@testing --allow-untrusted

VOLUME ["/data"]

ENTRYPOINT ["/usr/bin/radare2"]
CMD ["--help"]
