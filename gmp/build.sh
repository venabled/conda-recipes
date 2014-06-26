#!/bin/bash

chmod +x configure

if [ `uname` == Darwin ]; then
    ./configure --prefix=$PREFIX \
    --enable-cxx \
    --enable-fft
else
    ./configure --prefix=$PREFIX \
    --enable-cxx \
    --enable-fft
fi

make
make check
make install
