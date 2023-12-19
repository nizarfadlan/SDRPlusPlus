#!/bin/sh

# Create directory structure
echo Create directory structure
mkdir sista_debian_amd64
mkdir sista_debian_amd64/DEBIAN

# Create package info
echo Create package info
echo Package: sista >> sista_debian_amd64/DEBIAN/control
echo Version: 1.1.0$BUILD_NO >> sista_debian_amd64/DEBIAN/control
echo Maintainer: Ryzerth >> sista_debian_amd64/DEBIAN/control
echo Architecture: all >> sista_debian_amd64/DEBIAN/control
echo Description: Bloat-free SDR receiver software >> sista_debian_amd64/DEBIAN/control
echo Depends: $2 >> sista_debian_amd64/DEBIAN/control

# Copying files
ORIG_DIR=$PWD
cd $1
make install DESTDIR=$ORIG_DIR/sista_debian_amd64
cd $ORIG_DIR

# Create package
echo Create package
dpkg-deb --build sista_debian_amd64

# Cleanup
echo Cleanup
rm -rf sista_debian_amd64
