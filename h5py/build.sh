#!/bin/bash

python setup.py build --hdf5=$PREFIX
python setup.py install --prefix=$PREFIX
