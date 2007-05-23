# -*- mode: Makefile ; mode: font-lock -*-
# $Id: Makefile.am 335 2007-04-10 12:08:10Z mok $

#INCLUDES = -I$(top_srcdir)/include/mox -I$(prefix)/include

## Zap the long list of libs from main configure. We don't need'em here.
LIBS= -lm

noinst_PROGRAMS = cifdic_to_symtab
cifdic_to_symtab_SOURCES = cifdic_to_symtab.c
cifdic_to_symtab_LDFLAGS = libccif.la

# Convience libs for two files that need special flags defined.
noinst_LTLIBRARIES = libfoo1.la libfoo2.la libfoo3.la

libfoo1_la_SOURCES = star_print.c
libfoo1_la_CFLAGS = -D_refvar_inits=star_print_refvar_init

libfoo2_la_SOURCES = star_graph.c
libfoo2_la_CFLAGS = -D_refvar_inits=star_dot_refvar_inits

libfoo3_la_SOURCES = lib_dict2tab.c
libfoo3_la_CFLAGS = -D_refvar_inits=_dict_refvar_inits

libccif_h_sources = \
antlr.h ast.h astlib.h CASTBase.h ccif_defines.h ccif_malloc.h charstru.h   \
condition.h condition_list.h context.h data_block_list.h dlgauto.h dlgdef.h \
err.h exit_handler.h f_interface.h import_export.h library.h list.h	    \
map_file.h mode.h pcctscfg.h pccts_stdarg.h pccts_stdio.h pccts_stdlib.h    \
pccts_string.h rb.h rb_structs.h smart_node.h sorcerer.h sorcerer_pre.h	    \
sorlist.h sort.h stdpccts.h struct_manip1.h struct_manip2.h sym.h tokdefs.h \
tokens.h uint32.h value_manip.h

libccif_c_sources = ccif_unix.c condition.c context.c f_interface.c	\
 list.c rb.c sorlist.c sort.c star_err.c star_map.c star_walk.c		\
struct_manip.c value_manip.c star_scan.c sym.c 

# These .c files are #include'd
# astlib.c dict_analysis.c s_errorsupport.c sorcerer.c 
#
# strtod.c is empty.
#
# Have main()
# cifdicdot.c cifdicsql.c cifdickeys.c cifdic_to_symtab.c scanf_ansi.c sym.c
#
# These are programs not compiled by ccp4:

#libccif_f_sources = cciflib.f #check_cif.f cifget.f cifsearch.f cifset.f cifset_lib.f cifsymop.f

library_includedir = $(includedir)/ccif
library_include_HEADERS = $(libccif_h_sources)

lib_LTLIBRARIES = libccif.la 
libccif_la_SOURCES = $(libccif_c_sources) $(libccif_f_sources) $(libccif_h_sources)
libccif_la_LIBADD = $(noinst_LTLIBRARIES)
libccif_la_CFLAGS = -DPTR_FROM_TEXT=\"%p\"
libccif_la_LDFLAGS = -version-info 0:0:0

####
