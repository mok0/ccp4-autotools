
SUBDIRS = macros clipper examples dox src html

# CLIPPER_MTZ_DIR is filled if --with-mccp4 was given
# CLIPPER_CCTBX_DIR is filled if --with-cctbx was given

EXTRA_DIST = AUTHORS COPYING ChangeLog INSTALL NEWS README
bin_SCRIPTS = clipper-config

# pkgconfigdir = $(libdir)/pkgconfig
# pkgconfig_DATA = clipper.pc

if DEBUG
AM_CXXFLAGS = -g -DDEBUG
endif

ACLOCAL_AMFLAGS = -I macros
