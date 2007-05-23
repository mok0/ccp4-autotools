#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

lib_LTLIBRARIES = libclipper-cif.la
#lib_LIBRARIES = libclipper-cif.a

libclipper_cif_la_SOURCES = cif_data_io.cpp
#libclipper_cif_a_SOURCES  = $(libclipper_cif_la_SOURCES)

library_include_HEADERS = cif_data_io.h

library_includedir = $(pkgincludedir)/cif

INCLUDES = $(MMDB_CXXFLAGS)

libclipper_cif_a_AR = $(AR) $(AR_FLAGS)
