#!/bin/bash

# Hints:
# http://boost.2283326.n4.nabble.com/how-to-build-boost-with-bzip2-in-non-standard-location-td2661155.html
# http://www.gentoo.org/proj/en/base/amd64/howtos/?part=1&chap=3
#
# Python 3 build - http://thb.lt/blog/2014/boost-python-3-osx.html
# Build dependencies:
# - bzip2-devel

export BZIP2_INCLUDE=$PREFIX/include
export BZIP2_LIBPATH=$PREFIX/lib

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib
else
    export LD_LIBRARY_PATH=$PREFIX/lib
fi

./bootstrap.sh --prefix="${PREFIX}" \
 --with-python-version=3.4 \
 --with-python=$PYTHON \
 --with-python-root=$PREFIX  \
 --with-libraries=all
./b2 include="$PREFIX/include/python3.4m"
./bjam install
cp bjam $PREFIX/bin
