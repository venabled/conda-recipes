#!/bin/bash

PROJ_LIB=$PREFIX/lib
R CMD INSTALL --configure-args="--with-proj-include=${PREFIX}/include --with-proj-lib=${PREFIX}/lib --with-proj-share=${PREFIX}/share/proj" ./
