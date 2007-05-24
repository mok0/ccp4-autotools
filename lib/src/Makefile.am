## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 07:47:23 mok Exp $
## Author: mok@bioxray.dk

# substituted by autoconf if we want mmdb compiled.

if COMPILE_MMDB
  SUBDIRS = mmdb
endif

noinst_PROGRAMS = fsplit
fsplit_SOURCES = fsplit.c

core_c_files = library_err.c library_file.c library_utils.c ccp4_array.c \
ccp4_parser.c cvecmat.c

core_h_files = ccp4_errno.h library_file.h ccp4_file_err.h ccp4_sysdep.h   \
ccp4_utils.h ccp4_array.h ccp4_parser.h cvecmat.h ccp4_types.h ccp4_vars.h \
ccp4_spg.h

general_c_files = ccp4_program.c ccp4_general.c

cmtz_c_files = cmtzlib.c cmtzlib.h mtzdata.h

mtz_c_files = cmtzlib.c umtzlib.c mmtzlib.c

cmap_c_files = cmap_accessor.c cmap_close.c cmap_data.c cmap_header.c \
cmap_labels.c cmap_open.c cmap_skew.c cmap_stats.c cmap_symop.c

csym_c_files = csymlib.c 

cuc_c_files = ccp4_unitcell.c

finterface_c_files = cmtzlib_f.c csymlib_f.c ccp4_parser_f.c library_f.c  \
ccp4_diskio_f.c ccp4_general_f.c ccp4_unitcell_f.c cmaplib_f.c binsortint.c

fortran_f_files = cciflib.f ccplib.f dna_output.f fftlib.f harvlib.f	\
keyparse.f lgglib.f libhtml.f modlib.f pack_c.f pack_f.f parser.f	\
plot84lib.f plotsubs.f pxxml.f rwbrook.f unix.f

fsplit_dirs = cciflib ccplib dna_output fftlib harvlib keyparse lgglib	\
libhtml modlib parser plot84lib plotsubs pxxml rwbrook unix

ccp4_h_files = ccp4_file_err.h ccp4_program.h ccp4_unitcell.h cmap_errno.h \
cmap_stats.h csymlib.h library_file.h w32mvs.h ccp4_fortran.h ccp4_spg.h   \
ccp4_utils.h cmap_header.h cmaplib.h cvecmat.h mtzdata.h ccp4_array.h	   \
ccp4_general.h ccp4_sysdep.h ccp4_vars.h cmap_labels.h cmaplib_f.h	   \
overview.h ccp4_errno.h ccp4_parser.h ccp4_types.h cmap_data.h cmap_skew.h \
cmtzlib.h library_f.h

# Build the test application
CLEANFILES = unix.f
check_PROGRAMS = testlib
testlib_SOURCES = testlib.f
testlib_LDADD = .libs/libccp4f.a .libs/libccp4c.a ../ccif/libccif.la

# Build the main libraries:
lib_LTLIBRARIES = libccp4f.la libccp4c.la

libccp4c_la_SOURCES = $(core_c_files) $(general_c_files) $(cuc_c_files)	\
$(cmtz_c_files) $(cmap_c_files) $(csym_c_files)

libccp4f_la_SOURCES = $(fortran_f_files) $(finterface_c_files)

unix.f: unix.m4
	$(M4) unix.m4 > unix.f
####
