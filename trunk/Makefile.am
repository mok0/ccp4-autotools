## -*- mode: Makefile ; mode: font-lock -*-
## $Id: Makefile.am 342 2007-05-15 20:27:57Z mok $

# Build in these directories
SUBDIRS = lib src ccp4i manual etc doc html

if COMPILE_XAPPS
   SUBDIRS += x-windows help
endif

if COMPILE_UNSUPP
   SUBDIRS += unsupported/src
endif

ACLOCAL_AMFLAGS = -I config

#Distribute these directories:
DIST_SUBDIRS = lib src x-windows unsupported doc help ccp4i

EXTRA_DIST = bootstrap

####
