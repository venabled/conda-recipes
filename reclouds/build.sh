#!/bin/bash

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib
else
    export LD_LIBRARY_PATH=$PREFIX/lib
fi

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
-D OPENCV_INCLUDE_DIR=$PREFIX/include \
-D OPENCV_LIB_PATH=$PREFIX/lib \
-D GDAL_INCLUDE_DIR=$PREFIX/include \
-D GDAL_LIB_PATH=$PREFIX/lib \
-D RSGIS_INCLUDE_DIR=$PREFIX/include/rsgis \
-D RSGIS_LIB_PATH=$PREFIX/lib \
.

make
make install
