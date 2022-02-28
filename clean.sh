#!/bin/bash

find . -name \*.o  | xargs rm
find . -name \*.d  | xargs rm

rm -rf src/vldp2/Makefile src/vldp2/autotools/Makefile  src/vldp2/config.log src/vldp2/config.status src/vldp2/doc/.deps/ src/vldp2/doc/Makefile src/vldp2/include/Makefile src/vldp2/include/config.h src/vldp2/include/stamp-h1 src/vldp2/libmpeg2/.deps/ src/vldp2/libmpeg2/Makefile src/vldp2/libmpeg2/libmpeg2.pc src/vldp2/libtool src/vldp2/libvldp2.so src/vldp2/libvo/.deps/ src/vldp2/libvo/Makefile src/vldp2/src/.deps/ src/vldp2/src/Makefile src/vldp2/test/Makefile src/vldp2/vc++/Makefile src/game/singe/libsinge.so src/manymouse/detect_mice actionmax.bin libsinge.so
