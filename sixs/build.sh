#!/bin/bash

cd 6SV1.1
make 
mkdir -p $PREFIX/bin
mv sixsV1.1 $PREFIX/bin/
chmod a+x $PREFIX/bin/sixsV1.1
cd $PREFIX/bin
ln -s sixsV1.1 sixs
