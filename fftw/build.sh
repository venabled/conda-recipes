#!/bin/bash

./configure --prefix=$PREFIX \
--enable-shared \
--disable-static CPPFLAGS=-fPIC 
make
make install
