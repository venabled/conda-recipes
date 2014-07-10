#!/bin/bash

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
    cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D WITH_LASZIP=TRUE \
    -D LASZIP_LIBRARY=$PREFIX/lib/liblaszip.dylib \
    -D LASZIP_INCLUDE_DIR=$PREFIX/include \
    .
else
    export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
    cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D WITH_LASZIP=TRUE \
    -D BOOST_ROOT=$PREFIX \
    -D BOOST_INCLUDEDIR=$PREFIX/include \
    -D LASZIP_LIBRARY=$PREFIX/lib/liblaszip.so \
    -D LASZIP_INCLUDE_DIR=$PREFIX/include \
    .
fi
make
make install
