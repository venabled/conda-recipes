#!/bin/bash

# Hints:
# http://boost.2283326.n4.nabble.com/how-to-build-boost-with-bzip2-in-non-standard-location-td2661155.html
# http://www.gentoo.org/proj/en/base/amd64/howtos/?part=1&chap=3

# Build dependencies:
# - bzip2-devel

export BZIP2_INCLUDE=$PREFIX/include
export BZIP2_LIBPATH=$PREFIX/lib

./bootstrap.sh --prefix="${PREFIX}" \
--without-libraries=python \
./b2
./bjam install

