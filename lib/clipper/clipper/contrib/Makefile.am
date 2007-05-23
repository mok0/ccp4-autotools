#   Copyright 2002 
#   For licence conditions, see the file COPYING in the distribution.

libclipper_contrib_la_SOURCES = function_object_bases.cpp \
sfcalc.cpp edcalc.cpp sfcalc_obs.cpp sfweight.cpp fffear.cpp mapfilter.cpp \
skeleton.cpp originmatch.cpp

#libclipper_contrib_a_SOURCES = $(libclipper_contrib_la_SOURCES)

library_include_HEADERS = \
edcalc.h                  mapfilter.h               sfcalc_obs.h \
fffear.h                  originmatch.h             sfweight.h \
function_object_bases.h   sfcalc.h                  skeleton.h

library_includedir = $(pkgincludedir)/contrib

#shared
lib_LTLIBRARIES = libclipper-contrib.la

#non shared
#lib_LIBRARIES = libclipper-contrib.a

INCLUDES =  $(FFTW_CXXFLAGS)
DIST_EXTRA = clipper_contrib.dox

libclipper_contrib_a_AR = $(AR) $(AR_FLAGS)
