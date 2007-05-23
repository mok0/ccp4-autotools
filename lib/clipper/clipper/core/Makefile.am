# Copyright 2003
# For licence conditions, see the file COPYING in the distribution

INCLUDES = $(FFTW_CXXFLAGS)

libclipper_core_la_SOURCES = \
atomsf.cpp          container_map.cpp   hkl_info.cpp        resol_fn.cpp \
cell.cpp            container_types.cpp hkl_lookup.cpp      resol_targetfn.cpp \
clipper_memory.cpp  coords.cpp          hkl_operators.cpp   rotation.cpp \
clipper_message.cpp derivs.cpp          map_interp.cpp      spacegroup.cpp \
clipper_stats.cpp   fftmap.cpp          map_utils.cpp       spacegroup_data.cpp \
clipper_types.cpp   fftmap_sparse.cpp   nxmap.cpp           symop.cpp \
clipper_util.cpp    hkl_compute.cpp     nxmap_operator.cpp  xmap.cpp \
container.cpp       hkl_data.cpp        ramachandran.cpp \
container_hkl.cpp   hkl_datatypes.cpp   resol_basisfn.cpp

#libclipper_core_a_SOURCES = $(libclipper_core_la_SOURCES)

library_includedir=$(pkgincludedir)/core
library_include_HEADERS = \
atomsf.h            container.h         hkl_data.h          ramachandran.h \
cell.h              container_hkl.h     hkl_datatypes.h     resol_basisfn.h \
clipper_memory.h    container_map.h     hkl_info.h          resol_fn.h \
clipper_message.h   container_types.h   hkl_lookup.h        resol_targetfn.h \
clipper_precision.h coords.h            hkl_operators.h     rotation.h \
clipper_stats.h     derivs.h            map_interp.h        spacegroup.h \
clipper_sysdep.h    fftmap.h            map_utils.h         spacegroup_data.h \
clipper_types.h     fftmap_sparse.h     nxmap.h             symop.h \
clipper_util.h      hkl_compute.h       nxmap_operator.h    xmap.h

#shared
lib_LTLIBRARIES = libclipper-core.la

#non shared
#lib_LIBRARIES = libclipper-core.a

libclipper_core_a_AR = $(AR) $(AR_FLAGS)
