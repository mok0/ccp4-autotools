## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 19:41:08 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

LIBS  =  -lSM -lICE -lXt -lX11

bin_PROGRAMS = hklview

hklview_h_files = \
celldm.h  dsplyc.h  imgsiz.h  maping.h  mxdinc.h  symop.h   \
colasn.h  imagec.h  limits.h  masks.h   refstr.h  zonedf.h  \
version.h

hklview_LDADD = ../xdl_view/src/libxdl_view.la \
	../../lib/src/libccp4f.la \
	../../lib/src/libccp4c.la \
	../../lib/ccif/libccif.la

hklview_LDFLAGS = @MMDB_LIBS@

hklview_SOURCES = $(hklview_h_files) hklview.f


####
