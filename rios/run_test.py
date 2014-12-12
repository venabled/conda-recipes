#!/usr/bin/env python
"""
Main test harness for RIOS. 

Should be run as a main program. It then runs a selection 
of tests of some capabilities of RIOS. 

"""
# This file is part of RIOS - Raster I/O Simplification
# Copyright (C) 2012  Sam Gillingham, Neil Flood
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Added as part of conda build test, modified to use try and except when importing RIOS.
# Dan Clewley

import os
# Set GDAL_DATA variable to point to gdal data
conda_prefix=os.getenv('PREFIX')
os.putenv('GDAL_DATA',os.path.join(conda_prefix,'share','gdal'))

try:
    from rios.riostests import riostestutils
except ImportError as err:
    raise ImportError(err)
else:
    try:
        riostestutils.testAll()
    except Exception as err:
        print(err)
