#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "usage: $0 <path>"
    exit 1
fi

FULLPATH=`cd $1; pwd`

BINARY_PATH=$HOME/.local/bin
DESKTOP_PATH=$HOME/.local/share/applications

mkdir -p $BINARY_PATH
mkdir -p $DESKTOP_PATH

for FILE in `find $FULLPATH -maxdepth 1 -type f -executable`; do
    echo "[executable]: $FILE"
    ln -sf $FILE $BINARY_PATH
done

for FILE in `find $FULLPATH -maxdepth 1 -type f -name '*.desktop'`; do
    echo "[desktop entry]: $FILE"
    ln -sf $FILE $DESKTOP_PATH
done
