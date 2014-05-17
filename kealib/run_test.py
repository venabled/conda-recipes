import os, subprocess

# Get conda prefix
conda_prefix=os.getenv('PREFIX')
# Set GDAL driver path (so KEA will be found)
os.putenv('GDAL_DRIVER_PATH',os.path.join(conda_prefix,'gdalplugins'))

try:
    from osgeo import gdal
except ImportError:
    print("Could not import GDAL Python bindings")
    print("Running 'gdal_translate' - check if KEA is available")
    subprocess.call(['gdal_translate','--formats'])
else:
    driver = gdal.GetDriverByName("KEA")
    if driver is None:
        raise Exception('Could not import KEA in GDAL')
    else:
        print('KEA driver recognised from Python')
