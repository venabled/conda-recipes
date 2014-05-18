#!/bin/bash

if [ `uname` == Darwin ]; then
    cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D MPFR_INCLUDE_DIR=$PREFIX/include \
    -D MPFR_LIBRARIES=$PREFIX/lib/libmpfr.dylib \
    -D GMP_INCLUDE_DIR=$PREFIX/include \
    -D GMP_LIBRARIES=$PREFIX/lib/libgmp.dylib \
    -D GMP_LIBRARIES_DIR=$PREFIX/lib \
    -D GMPXX_INCLUDE_DIR=$PREFIX/include \
    -D GMPXX_LIBRARIES=$PREFIX/include/libgmpxx.dylib \
    -D ZLIB_LIBRARY=$PREFIX/lib/libz.dylib \
    -D ZLIB_INCLUDE_DIR=$PREFIX/include \
    .
else
    cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
    -D MPFR_INCLUDE_DIR=$PREFIX/include \
    -D MPFR_LIBRARIES=$PREFIX/lib/libmpfr.so \
    -D GMP_INCLUDE_DIR=$PREFIX/include \
    -D GMP_LIBRARIES=$PREFIX/lib/libgmp.so \
    -D GMP_LIBRARIES_DIR=$PREFIX/lib \
    -D GMPXX_INCLUDE_DIR=$PREFIX/include \
    -D GMPXX_LIBRARIES=$PREFIX/include/libgmpxx.so \
    -D ZLIB_LIBRARY=$PREFIX/lib/libz.so \
    -D ZLIB_INCLUDE_DIR=$PREFIX/include \
    .
fi


make
make install
