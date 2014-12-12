#!/bin/bash

# Need to build against system QT - make sure conda qt is not installed.

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
else
    export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
fi

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
-D CMAKE_VERBOSE_MAKEFILE=ON \
-D CMAKE_SKIP_RPATH=ON \
-D SPDLIB_IO_INCLUDE_DIR=$PREFIX/include \
-D SPDLIB_IO_LIB_PATH=$PREFIX/lib \
-D HDF5_INCLUDE_DIR=$PREFIX/include \
-D HDF5_LIB_PATH=$PREFIX/lib \
-D GDAL_INCLUDE_DIR=$PREFIX/include \
-D GDAL_LIB_DIR=$PREFIX/lib \
-D CMAKE_BUILD_TYPE=DEBUG \
.

make
make install

