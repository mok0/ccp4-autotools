bin_PROGRAMS = cpirate cmakereference

cpirate_SOURCES = cpirate.cpp simulate-lib.cpp pirate-lib.cpp pirate-ncsaver.cpp pirate-ncsfind.cpp simplex-lib.cpp ../ccp4-extras.cpp

cmakereference_SOURCES = cmakereference.cpp ftplib.h ftplib.c compress42.c ../ccp4-extras.cpp

INCLUDES = $(FFTW_CXXFLAGS) $(MMDB_CXXFLAGS)  $(CCP4_CXXFLAGS) \
	   -I$(includedir) -I..

LIBS = $(FFTW_LIBS) $(CCP4_LIBS) $(MMDB_LIBS) $(CCTBX_LIBS) @LIBS@

LDADD = ../../clipper/contrib/libclipper-contrib.la ../../clipper/cif/libclipper-cif.la ../../clipper/mmdb/libclipper-mmdb.la ../../clipper/ccp4/libclipper-ccp4.la ../../clipper/phs/libclipper-phs.la ../../clipper/core/libclipper-core.la

EXTRA_DIST = makereference.csh

NOINST_headers = simulate-lib.h pirate-lib.h pirate-ncsaver.h pirate-ncsfind.h simplex-lib.h ftplib.h
