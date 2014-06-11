#!/bin/bash

cd source
./configure --prefix=$PREFIX 
make
make install
