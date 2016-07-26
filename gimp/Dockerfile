
FROM alpine:3.4

MAINTAINER mliszcz<liszcz.michal@gmail.com>

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk update && \
    apk add \
        gimp \
        libcanberra-gtk2 \
        gnome-themes-standard@testing

ENTRYPOINT ["/usr/bin/gimp"]
