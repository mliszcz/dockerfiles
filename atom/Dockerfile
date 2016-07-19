
FROM ubuntu:xenial

MAINTAINER mliszcz<liszcz.michal@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        software-properties-common && \
    add-apt-repository -y ppa:webupd8team/atom && \
    apt-get update && \
    apt-get install -y \
        libgtk2.0-0 \
        libcanberra-gtk-module \
        gnome-themes-standard \
        libasound2 \
        atom

ENTRYPOINT ["/usr/bin/atom", "--foreground"]

CMD []
