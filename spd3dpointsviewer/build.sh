#!/bin/bash

if [ `uname` == Linux ]; then
    export QMAKESPEC="linux-g++"

    # Work around qt's hard-coded paths - copied from PyQt build instructions.
    sudo mkdir -p /opt/anaconda1anaconda2anaconda3/
    sudo chmod 777 /opt/anaconda1anaconda2anaconda3
    ln -s $PREFIX/mkspecs /opt/anaconda1anaconda2anaconda3/mkspecs
    ln -s $PREFIX/include /opt/anaconda1anaconda2anaconda3/include
    ln -s $PREFIX/lib /opt/anaconda1anaconda2anaconda3/lib
    ln -s $PREFIX/bin /opt/anaconda1anaconda2anaconda3/bin

    export LD_LIBRARY_PATH=$PREFIX/lib/
fi

if [ `uname` == Darwin ]; then
    export DYLD_LIBRARY_PATH=$PREFIX/lib/
fi

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
-D CMAKE_VERBOSE_MAKEFILE=ON \
-D SPDLIB_IO_INCLUDE_DIR=$PREFIX/include \
-D SPDLIB_IO_LIB_PATH=$SPREFIX/lib \
-D HDF5_INCLUDE_DIR=$PREFIX/include \
-D HDF5_LIB_PATH=$PREFIX/lib \
-D GDAL_INCLUDE_DIR=$PREFIX/include \
-D GDAL_LIB_DIR=$PREFIX/lib \
.

make
make install

if [ `uname` == Linux ]; then
    sudo rm -rf /opt/anaconda1anaconda2anaconda3
fi
