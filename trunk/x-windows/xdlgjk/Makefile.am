## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 19:12:16 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

# Build in these directories

bin_PROGRAMS = xdlmapman xdldataman

LDADD = ../../lib/src/libccp4c.la ../../lib/src/libccp4f.la \
	../../lib/ccif/libccif.la ../xdl_view/src/libxdl_view.la

AM_LDFLAGS = @MMDB_LIBS@
xdlmapman_SOURCES = xdlmapman.f xdlmapman_subs.f xdl_gksubs.f gkccp4_subs.f

xdldataman_SOURCES = xdldataman.f xdldataman_subs.f xdl_gksubs.f gkccp4_subs.f xps_graf.f 


####
