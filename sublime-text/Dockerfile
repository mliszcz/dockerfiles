
FROM ubuntu:xenial

MAINTAINER mliszcz<liszcz.michal@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        libgtk2.0-0 \
        libcanberra-gtk-module \
        gnome-themes-standard \
        language-pack-en-base

ADD https://download.sublimetext.com/sublime-text_build-3114_amd64.deb /home

RUN dpkg -i /home/*.deb && \
    rm -f /home/*.deb

RUN /bin/bash -c "printf '\x95' | dd seek=$((0xc700)) conv=notrunc bs=1 of=/opt/sublime_text/sublime_text"

ENTRYPOINT ["/usr/bin/subl", "--wait"]

CMD []
