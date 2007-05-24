## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/24 13:22:49 mok Exp $
## Author: mok@ghost.bioxray.dk
## Copyright 2007 Morten Kjeldgaard
## This code is distributed under the GPL license.

ccp4idir = $(pkgdatadir)/ccp4i

ccp4i_dirs = bin etc icons mapslicer scripts src templates topdraw crank \
help loggraph python sketch tasks test_data utils

install-data-local:
	$(mkinstalldirs) $(DESTDIR)$(ccp4idir); \
	for d in $(ccp4i_dirs) ; do cp -a $$d $(DESTDIR)$(ccp4idir) ; done
####
