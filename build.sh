#!/bin/bash

rm -rf build
mkdir build

cp script/* build/

cd build

# untar

tar -xjf ../original-src/zlib-1.2.5.tar.bz2
tar -xjf ../original-src/MediaInfo_CLI_0.7.52_GNU_FromSource.tar.bz2

# patch

patch -p1 < ../patch/01-disable_thread.patch

# build zlib

make
