#!/bin/bash
# Get an updated config.sub and config.guess (if available)
if [ -d "$BUILD_PREFIX/share/gnuconfig" ]; then
    cp $BUILD_PREFIX/share/gnuconfig/config.* .
fi

set -ex

mkdir build
cd build

cmake ${CMAKE_ARGS} \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_COLOR_MAKEFILE=OFF \
  -DCMAKE_INSTALL_PREFIX="$PREFIX" \
  -DBUILD_TESTING=OFF \
  ..

make -j ${CPU_COUNT}
make install
