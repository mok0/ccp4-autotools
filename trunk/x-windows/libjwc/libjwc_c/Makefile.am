lib_LTLIBRARIES = libjwc_c.la

libjwc_c_la_SOURCES = dml.c fft_1d.c imglib.c kdm.c lirl.c prl.c rdm.c	  \
	unq.c dml.h dml_systyp.h fft_1d.h fft_1d_systyp.h imglib.h	  \
	imglib_systyp.h kdm.h kdm_ext.h kdm_systyp.h lirl.h lirl_systyp.h \
	prl.h prl_systyp.h rdm.h rdm_systyp.h unq.h unq_systyp.h

libjwc_c_la_LDFLAGS = -version-info 1:1:1

if DEBUG
AM_CFLAGS = -g -DDEBUG
endif
