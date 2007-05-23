#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

#shared
lib_LTLIBRARIES = libclipper-mmdbold.la

#non shared
#lib_LIBRARIES = libclipper-mmdbold.a

libclipper_mmdbold_la_SOURCES = clipper_mmdb.cpp \
clipper_mmdb_wrapper.cpp  clipper_mmdb_types.cpp    container_mmdb.cpp

#libclipper_mmdbold_a_SOURCES = $(libclipper_mmdbold_la_SOURCES)

library_include_HEADERS = clipper_mmdb.h  clipper_mmdb_wrapper.h \
clipper_mmdb_types.h      container_mmdb.h

library_includedir = $(pkgincludedir)/mmdbold

EXTRA_DIST = clipper_mmdb_dox
INCLUDES = $(MMDB_CXXFLAGS)

libclipper_mmdbold_a_AR = $(AR) $(AR_FLAGS)
