bin_PROGRAMS = chltofom cphasematch csfcalc cfft cinvfft csigmaa cecalc cphasecombine cpatterson

chltofom_SOURCES = chltofom.cpp ccp4-extras.cpp

cphasematch_SOURCES = cphasematch.cpp ccp4-extras.cpp

csfcalc_SOURCES = csfcalc.cpp ccp4-extras.cpp

cfft_SOURCES = cfft.cpp ccp4-extras.cpp

cinvfft_SOURCES = cinvfft.cpp ccp4-extras.cpp

csigmaa_SOURCES = csigmaa.cpp ccp4-extras.cpp

cecalc_SOURCES = cecalc.cpp ccp4-extras.cpp

cphasecombine_SOURCES = cphasecombine.cpp ccp4-extras.cpp

cpatterson_SOURCES = cpatterson.cpp ccp4-extras.cpp

EXTRA_DIST = README

INCLUDES = $(FFTW_CXXFLAGS) $(MMDB_CXXFLAGS)  $(CCP4_CXXFLAGS) $(CCTBX_CXXFLAGS) \
	   $(BOOST_CXXFLAGS) -I$(includedir)

LIBS = $(FFTW_LIBS) $(CCP4_LIBS) $(MMDB_LIBS) $(CCTBX_LIBS) @LIBS@

LDADD = ../clipper/contrib/libclipper-contrib.la ../clipper/cif/libclipper-cif.la ../clipper/mmdb/libclipper-mmdb.la ../clipper/ccp4/libclipper-ccp4.la ../clipper/phs/libclipper-phs.la ../clipper/core/libclipper-core.la

DIST_SUBDIRS = pirate
SUBDIRS = pirate

