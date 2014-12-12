#!/bin/bash

if [ `uname` == Darwin ]; then
    PGFLAG=""
else
    PGFLAG="--with-pg=$PREFIX/bin/pg_config"
fi

./configure --with-python --prefix=$PREFIX \
--with-geos=$PREFIX/bin/geos-config \
--with-static-proj4=$PREFIX \
--with-netcdf=$PREFIX \
--with-hdf5=$PREFIX \
--with-xerces=$PREFIX \
--without-pam \
--with-python \
--disable-rpath \
$PGFLAG

make -j 4
make install

# Copy data files 
mkdir -p $PREFIX/share/gdal/
cp data/*csv $PREFIX/share/gdal/
cp data/*wkt $PREFIX/share/gdal/

