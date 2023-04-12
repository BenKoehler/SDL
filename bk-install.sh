#!/bin/bash
cd ..
mv SDL/ SDL2-src/
#remove previous installation
rm -r SDL2-build
rm -r SDL2
mkdir SDL2-build
mkdir SDL2
cd SDL2-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_INSTALL_PREFIX=../SDL2 \
../SDL2-src
make -j 8
make install
cd ..
rm -r SDL2-build
cp SDL2-src/bk.cmake SDL2

