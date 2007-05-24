## -*- mode: makefile; mode: font-lock -*-

bin_PROGRAMS = maketestdata caniso cecalc cfft chltofom cinvfft convert2mtz cpatterson cphasecombine cphasematch csfcalc csigmaa cmakereference

maketestdata_SOURCES   = maketestdata.cpp
caniso_SOURCES         = caniso.cpp
cecalc_SOURCES         = cecalc.cpp
cfft_SOURCES           = cfft.cpp
chltofom_SOURCES       = chltofom.cpp
cinvfft_SOURCES        = cinvfft.cpp
convert2mtz_SOURCES    = convert2mtz.cpp
cpatterson_SOURCES     = cpatterson.cpp
cphasecombine_SOURCES  = cphasecombine.cpp
cphasematch_SOURCES    = cphasematch.cpp
csfcalc_SOURCES        = csfcalc.cpp
csigmaa_SOURCES        = csigmaa.cpp
cmakereference_SOURCES = cmakereference.cpp compress42.c ftplib.c

TESTS = maketestdata


INCLUDES = $(FFTW_CXXFLAGS) $(MMDB_CXXFLAGS)  $(CCP4_CXXFLAGS) $(CCTBX_CXXFLAGS) \
	   $(BOOST_CXXFLAGS) -I$(includedir) -I../src

LIBS = -L$(libdir) $(FFTW_LIBS) $(CCP4_LIBS) $(MMDB_LIBS) $(CCTBX_LIBS) 

LDADD = ../clipper/contrib/libclipper-contrib.la ../clipper/cif/libclipper-cif.la ../clipper/mmdb/libclipper-mmdb.la ../clipper/ccp4/libclipper-ccp4.la ../clipper/phs/libclipper-phs.la ../clipper/core/libclipper-core.la

####

