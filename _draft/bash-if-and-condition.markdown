#!/bin/bash

if which cpanm >/dev/null 2>&1 && test -z $PERLBREW_ROOT; then
    echo $PERLBREW_ROOT
fi
