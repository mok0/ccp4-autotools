#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

INCLUDES = $(MMDB_CXXFLAGS)

EXTRA_DIST = clipper_minimol.dox

#shared
lib_LTLIBRARIES = libclipper-minimol.la

#non shared
#lib_LIBRARIES = libclipper-minimol.a

libclipper_minimol_la_SOURCES = container_minimol.cpp minimol.cpp \
minimol_io.cpp

#libclipper_minimol_a_SOURCES = $(libclipper_minimol_la_SOURCES)

library_include_HEADERS = container_minimol.h minimol.h \
minimol_io.h

library_includedir = $(pkgincludedir)/minimol

libclipper_minimol_a_AR = $(AR) $(AR_FLAGS)
