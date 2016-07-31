
FROM alpine:3.4

MAINTAINER mliszcz<liszcz.michal@gmail.com>

# fop and batik are required for pdf output.
# NOTE: batik-1.8 won't work, the class is missing:
# org.apache.batik.dom.svg.SVGDOMImplementation

RUN apk update && \
    apk add \
        openjdk8-jre \
        fontconfig \
        graphviz

ADD [ \
    "http://netassist.dl.sourceforge.net/project/plantuml/plantuml.jar", \
    "http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org/xmlgraphics/batik/binaries/batik-1.7.1.tar.gz", \
    "http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org/xmlgraphics/fop/binaries/fop-2.1-bin.tar.gz", \
    "/usr/local/lib/" \
]

COPY scripts/run_plantuml.sh /usr/local/bin/plantuml

RUN cd /usr/local/lib && \
    chmod 644 plantuml.jar && \
    tar xf batik-* && \
    tar xf fop-* && \
    rm -f batik-*.tar.gz && \
    rm -f fop-*.tar.gz && \
    chmod +x /usr/local/bin/plantuml

ENTRYPOINT ["/usr/local/bin/plantuml"]
