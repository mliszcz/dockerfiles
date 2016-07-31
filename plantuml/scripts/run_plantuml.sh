#!/bin/sh

PREFIX=/usr/local/lib

java \
  -cp "$PREFIX/*:$PREFIX/batik-*/*:$PREFIX/batik-*/lib/*:$PREFIX/fop-*/build/*:$PREFIX/fop-*/lib/*" \
  net.sourceforge.plantuml.Run \
  "$@"
