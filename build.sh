#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "usage: $0 <path>"
    exit 1
fi

FULLPATH=`cd $1; pwd`
BASENAME=`basename $FULLPATH`

docker build -t mliszcz/$BASENAME $FULLPATH
