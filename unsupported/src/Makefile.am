## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 21:07:22 mok Exp $
## Author: mok@bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

AM_FFLAGS = $(CCP4_FFLAGS)

LIBS = -lmmdb

LDADD = ../../lib/src/libccp4c.la ../../lib/src/libccp4f.la	\
  ../../lib/ccif/libccif.la

bin_PROGRAMS = angles asc2p84 axissearch compar difres extends havecs hbond	\
  helixang mapexchange mapreplace p842asc postref refindex reforigin rotaprep	\
  symfit vecsum zeroed

angles_SOURCES = angles.f
asc2p84_SOURCES = asc2p84.f
axissearch_SOURCES = axissearch.f
compar_SOURCES = compar.f
difres_SOURCES = difres.f
extends_SOURCES = extends.f
havecs_SOURCES = havecs.f
hbond_SOURCES =	hbond.f
helixang_SOURCES = helixang.f
mapexchange_SOURCES = mapexchange.f
mapreplace_SOURCES = mapreplace.f
p842asc_SOURCES = p842asc.f
postref_SOURCES = postref.f
refindex_SOURCES = refindex.f
reforigin_SOURCES = reforigin.f
rotaprep_SOURCES = rotaprep.f
symfit_SOURCES = symfit.f
vecsum_SOURCES = vecsum.f
zeroed_SOURCES = zeroed.f

####
