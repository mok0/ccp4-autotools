## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 07:47:23 mok Exp $
## Author: mok@bioxray.dk

ACLOCAL_AMFLAGS = -I config

# Build in these directories. The @blahblah@ values are substituted
# by the appropriate value from autoconf (may be blank)

SUBDIRS = ccif src data

if COMPILE_SSM
  SUBDIRS+=ssm
endif

if COMPILE_LAPACK
  SUBDIRS += lapack
endif

if COMPILE_FFTW
  SUBDIRS += fftw
endif

if COMPILE_CLIPPER
  SUBDIRS += clipper
endif


#Distribute these directories:

DIST_SUBDIRS = $(SUBDIRS) ssm lapack fftw clipper data X11
DIST_EXTRA = font.bin nice.font.bin # why are these here?

####
