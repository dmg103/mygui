#!/bin/bash
git checkout master

rm -r build/
rm -r lib/

#Linux
mkdir build
mkdir lib
mkdir lib/linux
cd build
cmake .. -DMYGUI_RENDERSYSTEM=7 -DMYGUI_STATIC=ON
make -j10
cd ..
cp -r ./build/lib/* ./lib/linux

rm -r build/

#Windows
mkdir build
mkdir lib/win
cd build
cmake CMAKE_CXX_COMPILER=x86_64-w64-mingw32-g++ .. -DMYGUI_RENDERSYSTEM=7 -DMYGUI_STATIC=ON
make -j10
cd ..
cp -r ./build/lib/* ./lib/win
