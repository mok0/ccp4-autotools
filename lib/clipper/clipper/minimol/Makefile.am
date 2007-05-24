## -*- mode: Makefile; mode: font-lock -*-

INCLUDES = $(MMDB_CXXFLAGS)

EXTRA_DIST = clipper_minimol.dox

lib_LTLIBRARIES = libclipper-minimol.la

libclipper_minimol_la_SOURCES =			\
	container_minimol.cpp			\
	minimol.cpp				\
	minimol_data.cpp			\
	minimol_io.cpp				\
	minimol_seq.cpp				\
	minimol_utils.cpp

library_include_HEADERS =			\
	container_minimol.h			\
	minimol_data.h				\
	minimol.h				\
	minimol_io.h				\
	minimol_seq.h				\
	minimol_utils.h 

library_includedir = $(pkgincludedir)/minimol

####
