# Set this variable if you need to.
LINUX_JDK_PATH := /usr/lib/j2se/1.4/

linux := true

uname_s := $(shell uname -s)
ifeq ($(strip $(uname_s)),Linux)
  linux := true
endif

CFLAGS += -O0 -Wall -g -c
CFLAGS += -I.

#CFLAGS += -ISDL-1.2.8/include
#LDFLAGS += -LSDL-1.2.8/lib -lSDL -lSDLmain

CC := gcc
LD := gcc

ifeq ($(strip $(linux)),true)
  CFLAGS += -fPIC -I/usr/src/linux/include
  LDFLAGS += -ldl
  JDKPATH := $(LINUX_JDK_PATH)
  JAVAC := $(JDKPATH)bin/javac
  MANYMOUSEJNILIB := libManyMouse.so
  JNICFLAGS += -I$(JDKPATH)include -I$(JDKPATH)include/linux
  JNILDFLAGS += -shared -Wl,-soname,$(MANYMOUSEJNILIB)
endif


BASEOBJS := linux_evdev.o macosx_hidutilities.o macosx_hidmanager.o windows_wminput.o x11_xinput2.o manymouse.o

.PHONY: clean all

all: detect_mice

clean:
	rm -rf *.o *.obj *.exe *.class $(MANYMOUSEJNILIB) example/*.o example/*.obj detect_mice

%.o : %c
	$(CC) $(CFLAGS) -o $@ $<

detect_mice: $(BASEOBJS) example/detect_mice.o
	$(LD) -o $@ $+ $(LDFLAGS)
