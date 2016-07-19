
FROM ubuntu:xenial

MAINTAINER mliszcz<liszcz.michal@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        software-properties-common && \
    add-apt-repository -y ppa:webupd8team/atom && \
    apt-get update && \
    apt-get install -y \
        atom \
        libasound2 \
        libgtk-3-0

ENTRYPOINT ["/usr/bin/atom", "--foreground"]

CMD []
