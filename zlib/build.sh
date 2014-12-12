#!/bin/bash

if [ `uname` == Darwin ]; then
    ./configure --prefix=$PREFIX --archs="-arch x86_64"
else
	./configure --prefix=$PREFIX
fi

make
make install

