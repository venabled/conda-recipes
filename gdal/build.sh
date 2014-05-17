#!/bin/bash

./configure --with-python --prefix=$PREFIX \
--with-geos=$PREFIX/bin/geos-config \
--with-static-proj4=$PREFIX \
--with-hdf5=$PREFIX
make
make install

rm -rf $PREFIX/share
