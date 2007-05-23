#shared
lib_LTLIBRARIES = libssm.la

#non shared
lib_LIBRARIES = libssm.a

libssm_la_SOURCES = ssm_superpose.cpp ss_csia.cpp ss_vxedge.cpp \
ssm_align.cpp ss_graph.cpp


libssm_a_SOURCES = $(libssm_la_SOURCES)

library_include_HEADERS = ss_graph.h ssm_superpose.h ss_csia.h ss_vxedge.h \
ssm_align.h

library_includedir = $(pkgincludedir)

superpose_SOURCES = superpose.cpp

bin_PROGRAMS = superpose

INCLUDES = $(MMDB_CXXFLAGS)

LDFLAGS = $(MMDB_LIBS)

EXTRA_DIST = macros/mmdb.m4

superpose_LDADD = libssm.la
#superpose_LDFLAGS = -L$(libdir) -lssm

libssm_a_AR = $(AR) $(AR_FLAGS)
