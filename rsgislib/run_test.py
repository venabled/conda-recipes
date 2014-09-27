import os

# Get conda prefix
conda_prefix=os.getenv('PREFIX')
# Set GDAL driver path (so KEA will be found)
os.putenv('GDAL_DRIVER_PATH',os.path.join(conda_prefix,'gdalplugins'))

try:
    import rsgislib
    from rsgislib import imagecalibration
    from rsgislib import classification
    from rsgislib import elevation
    from rsgislib import imagecalc
    from rsgislib import imagefilter
    from rsgislib import imageregistration
    from rsgislib import imageutils
    from rsgislib import rastergis
    from rsgislib import segmentation
    from rsgislib import vectorutils
    from rsgislib import zonalstats
    
    print('All libraries imported OK')
except ImportError as err:
    print('ERROR: Not all libraries were imported OK')
    print(err)

