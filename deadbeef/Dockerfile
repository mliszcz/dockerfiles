
FROM ubuntu:xenial

MAINTAINER mliszcz<liszcz.michal@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        software-properties-common && \
    add-apt-repository -y ppa:starws-box/deadbeef-player && \
    apt-get update && \
    apt-get install -y \
        deadbeef \
        libcanberra-gtk3-module \
        gnome-icon-theme-extras

ADD https://gitlab.com/zykure/deadbeef-fb/raw/release/binary/deadbeef-fb_20160216_0.92.tar.gz \
    /root

RUN cd /root && \
    tar xf *.tar.gz && \
    mv deadbeef-fb/ddb_misc_filebrowser_GTK3.so /usr/lib/deadbeef/ && \
    rm -rf deadbeef-fb

ENTRYPOINT /usr/bin/deadbeef
