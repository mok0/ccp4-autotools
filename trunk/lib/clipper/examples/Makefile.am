check_PROGRAMS = cmaplocal ffttest mtztest phstest rfltest symtest maptest sgtest sktest diffmap ccad ciftophs sftest


ccad_SOURCES = ccad.cpp
cmaplocal_SOURCES = cmaplocal.cpp ../src/ccp4-extras.cpp
#cnstest_SOURCES = cnstest.cpp
sftest_SOURCES = sftest.cpp
ffttest_SOURCES = ffttest.cpp
mtztest_SOURCES = mtztest.cpp    
phstest_SOURCES = phstest.cpp
rfltest_SOURCES = rfltest.cpp
sgtest_SOURCES = sgtest.cpp
sktest_SOURCES = sktest.cpp
symtest_SOURCES = symtest.cpp
maptest_SOURCES = maptest.cpp
diffmap_SOURCES = diffmap.cpp  
ciftophs_SOURCES = ciftophs.cpp
#Âcctbxtest_SOURCES = cctbxtest.cpp

INCLUDES = $(FFTW_CXXFLAGS) $(MMDB_CXXFLAGS)  $(CCP4_CXXFLAGS) $(CCTBX_CXXFLAGS) \
	   $(BOOST_CXXFLAGS) -I$(includedir) -I../src

LIBS = -L$(libdir) $(FFTW_LIBS) $(CCP4_LIBS) $(MMDB_LIBS) $(CCTBX_LIBS) 

LDADD = ../clipper/contrib/libclipper-contrib.la ../clipper/cif/libclipper-cif.la ../clipper/mmdb/libclipper-mmdb.la ../clipper/ccp4/libclipper-ccp4.la ../clipper/phs/libclipper-phs.la ../clipper/core/libclipper-core.la

