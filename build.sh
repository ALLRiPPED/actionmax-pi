#!/bin/bash

cd src/vldp2
./configure --disable-accel-detect
make -f Makefile.linux
cd ../game/singe
make -f Makefile.linux
cd ../..
make
cd ..
