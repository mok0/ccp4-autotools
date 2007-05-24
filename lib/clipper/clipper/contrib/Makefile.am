## -*- mode: Makefile; mode: font-lock -*-

libclipper_contrib_la_SOURCES = edcalc.cpp fffear.cpp			\
function_object_bases.cpp mapfilter.cpp originmatch.cpp sfcalc.cpp	\
sfcalc_obs.cpp sfweight.cpp skeleton.cpp

library_include_HEADERS = edcalc.h fffear.h function_object_bases.h	\
mapfilter.h originmatch.h sfcalc.h sfcalc_obs.h sfweight.h skeleton.h

library_includedir = $(pkgincludedir)/contrib

lib_LTLIBRARIES = libclipper-contrib.la

INCLUDES =  $(FFTW_CXXFLAGS)
DIST_EXTRA = clipper_contrib.dox

####
