.PHONY : all

CXX = g++

all : mediainfo

mediainfo : mediainfo.a mediainfolib.a zenlib.a zlib.a
	$(CXX) mediainfo.a mediainfolib.a zenlib.a zlib.a -o $@

zlib.a : Makefile.zlib
	$(MAKE) -f $< -j 3

zenlib.a : Makefile.zenlib
	$(MAKE) -f $< -j 3

mediainfolib.a : Makefile.mediainfolib
	$(MAKE) -f $< -j 3

mediainfo.a : Makefile.mediainfo
	$(MAKE) -f $< -j 3
