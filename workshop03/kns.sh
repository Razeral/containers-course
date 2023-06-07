#!/bin/sh

if test $# -le 0; then
    echo 'missing arguments'
    exit
fi

kubectl -n $*