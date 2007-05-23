## -*- mode: Makefile ; mode: font-lock -*- 
## Version: $Id: Makefile.am,v 0.0 2007/05/22 07:47:23 mok Exp $
## Author: mok@bioxray.dk


ACLOCAL_AMFLAGS = -I config


# Build in these directories. The @blahblah@ values are substituted
# by the appropriate value from autoconf (may be blank)

SUBDIRS = ccif src lapack \
	@CCP4_LAPACK_DIR@ \
	@CCP4_FFTW_DIR@ \
	@CCP4_SSM_DIR@ \
	@CCP4_CLIPPER_DIR@ 
# what to do with regexp rxdispencer?

#Distribute these directories:

DIST_SUBDIRS = ccif clipper data fftw lapack regex rxdispencer src ssm X11
DIST_EXTRA = font.bin nice.font.bin # why are these here?

####
