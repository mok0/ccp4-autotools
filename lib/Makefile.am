## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 07:47:23 mok Exp $
## Author: mok@bioxray.dk

ACLOCAL_AMFLAGS = -I config

# Build in these directories. The @blahblah@ values are substituted
# by the appropriate value from autoconf (may be blank)

SUBDIRS = ccif src ssm

if WANT_LAPACK
SUBDIRS += lapack
endif

if WANT_FFTW
SUBDIRS += fftw
endif

if WANT_CLIPPER
SUBDIRS += clipper
endif


#Distribute these directories:

DIST_SUBDIRS = ccif clipper data fftw lapack regex rxdispencer src ssm X11
DIST_EXTRA = font.bin nice.font.bin # why are these here?

####
