#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

INCLUDES = $(MMDB_CXXFLAGS)

#shared
lib_LTLIBRARIES = libclipper-mmdb.la

#non shared
#lib_LIBRARIES = libclipper-mmdb.a

libclipper_mmdb_la_SOURCES = clipper_mmdb.cpp

#libclipper_mmdb_a_SOURCES = $(libclipper_mmdb_la_SOURCES)

library_include_HEADERS = clipper_mmdb.h

library_includedir = $(pkgincludedir)/mmdb

EXTRA_DIST = clipper_mmdb_dox

libclipper_mmdb_a_AR = $(AR) $(AR_FLAGS)
