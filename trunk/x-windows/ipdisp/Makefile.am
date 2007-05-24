## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 20:37:32 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

bin_PROGRAMS = ipdisp_exe

ipdisp_exe_SOURCES = src/ipdisp.f src/dsplyc.h src/mxdinc.h src/mxdkbb.h \
	src/spdpar.h src/dsdinc.h src/dskio.c src/pck.c src/pack_c.c

ipdisp_exe_LDFLAGS = @MMDB_LIBS@

ipdisp_exe_LDADD = \
	../../lib/src/libccp4f.la \
	../../lib/src/libccp4c.la \
	../../lib/ccif/libccif.la \
	../xdl_view/src/libxdl_view.la

####
