#!/bin/bash

# Hints:
# http://boost.2283326.n4.nabble.com/how-to-build-boost-with-bzip2-in-non-standard-location-td2661155.html
# http://www.gentoo.org/proj/en/base/amd64/howtos/?part=1&chap=3

# Build dependencies:
# - bzip2-devel

export BZIP2_INCLUDE=$PREFIX/include
export BZIP2_LIBPATH=$PREFIX/lib

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib
else
    export LD_LIBRARY_PATH=$PREFIX/lib
fi

#ln -s $PREFIX/lib/python3.4m $PREFIX/lib/python3.4

./bootstrap.sh --prefix="${PREFIX}" --with-python=$PREFIX/bin/python --with-python-root=$PREFIX  --with-libraries=all
./b2
./bjam install
cp bjam $PREFIX/bin
