#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" -ne 1 ]; then
    echo "usage: $0 <name>"
    exit 1
fi

docker build -t mliszcz/`basename $1` $DIR/$1
