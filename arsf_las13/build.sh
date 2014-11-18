# Get python version (from http://stackoverflow.com/questions/6141581/detect-python-version-in-shell-script)
pythonversion=`python -c 'import sys; print(".".join(map(str, sys.version_info[:2])))'`

cd las13

if [ $pythonversion != 2.7 ]; then
   2to3 -w .
fi

cd las13reader
make
cd ../swig
make
python setup.py build
python setup.py install --prefix=$PREFIX
cd ..
cp las13.py $PREFIX/lib/python${pythonversion}/site-packages/las13.py
cp las13reader/liblas13reader.so $PREFIX/lib/
#cp swig/_las13reader*.so $PREFIX/lib/${pythonversion}/site-packages/
#cp swig/las13reader.py  $PREFIX/lib/${pythonversion}/site-packages/
#cp las13.py $PREFIX/lib/${pythonversion}/site-packages/__init__.py

