## -*- mode: Makefile ; mode: font-lock -*-
## $Id: Makefile.am 342 2007-05-15 20:27:57Z mok $

# Build in these directories
SUBDIRS = lib src ccp4i manual etc doc html

if COMPILE_XAPPS
   SUBDIRS += x-windows help
endif

if COMPILE_UNSUPP
   SUBDIRS += unsupported
endif

ACLOCAL_AMFLAGS = -I config

#Distribute these directories:
DIST_SUBDIRS = $(SUBDIRS) x-windows help unsupported

EXTRA_DIST = bootstrap ccp4-6.0.2-setup.sh.in

# If we have configured without some components of the package,
# some directories are not traversed by the Makefiles. However,
# we may still wish to clean them.
clean-local:
	cd x-windows/Mosflm; $(MAKE) clean
if ! COMPILE_LAPACK
	cd lib/lapack; $(MAKE) clean
endif
if ! COMPILE_CLIPPER
	cd lib/clipper; $(MAKE) clean
endif
if ! COMPILE_SSM
	cd lib/ssm; $(MAKE) clean
endif

install-data-local:
	$(mkinstalldirs) $(DESTDIR)/etc/profile.d
	install -m644 ccp4-6.0.2-setup.sh $(DESTDIR)/etc/profile.d

####
