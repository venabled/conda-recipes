#!/bin/bash

if [ `uname` == Darwin ]; then
	./configure --prefix=$PREFIX --disable-static \
	    --with-zlib=$PREFIX --enable-cxx --enable-shared
else
	./configure --prefix=$PREFIX --disable-static \
		--enable-linux-lfs --with-zlib=$PREFIX \
		--enable-cxx --enable-shared
fi

make
make install

rm -rf $PREFIX/share/hdf5_examples
