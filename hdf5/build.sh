#!/bin/bash

./configure --prefix=$PREFIX --disable-static \
    --enable-linux-lfs --with-zlib \
    --enable-cxx --enable-shared
make
make install

rm -rf $PREFIX/share/hdf5_examples
