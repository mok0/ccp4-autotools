#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

INCLUDES = $(CCP4_CXXFLAGS)

#shared
lib_LTLIBRARIES = libclipper-ccp4.la

#non shared
#lib_LIBRARIES = libclipper-ccp4.a

libclipper_ccp4_la_SOURCES = \
ccp4_mtz_types.cpp ccp4_mtz_io.cpp ccp4_map_io.cpp

#libclipper_ccp4_a_SOURCES = $(libclipper_ccp4_la_SOURCES)

library_include_HEADERS = \
ccp4_map_io.h       ccp4_mtz_io.h       ccp4_mtz_types.h

library_includedir = $(pkgincludedir)/ccp4

libclipper_ccp4_a_AR = $(AR) $(AR_FLAGS)
