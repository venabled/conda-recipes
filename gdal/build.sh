#!/bin/bash

./configure --with-python --prefix=$PREFIX \
--with-geos=$PREFIX/bin/geos-config \
--with-static-proj4=$PREFIX \
--with-hdf5=$PREFIX
make
make install

# Copy data files 
cp data/*csv $PREFIX/share/gdal/
cp data/*wkt $PREFIX/share/gdal/

