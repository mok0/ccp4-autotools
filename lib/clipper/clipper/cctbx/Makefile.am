#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

libclipper_cctbx_la_SOURCES = clipper_cctbx.cpp

#libclipper_cctbx_a_SOURCES = $(libclipper_cctbx_la_SOURCES)

library_include_HEADERS = clipper_cctbx.h
library_includedir=$(pkgincludedir)/cctbx

#shared
lib_LTLIBRARIES = libclipper-cctbx.la

#non shared
#lib_LIBRARIES = libclipper-cctbx.a

libclipper_cctbx_la_LDFLAGS = -version-info 1:0

INCLUDES = $(CCTBX_CXXFLAGS)

libclipper_cctbx_a_AR = $(AR) $(AR_FLAGS)
