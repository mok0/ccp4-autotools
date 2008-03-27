# -*- mode: Autoconf; mode: font-lock -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.61)
AC_INIT(ccp4, 6.0.2, ccp4@dl.ac.uk)
AC_CONFIG_SRCDIR([lib/src/ccplib.f])

AC_CONFIG_AUX_DIR([config])
AM_INIT_AUTOMAKE

# Checks for programs.
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_YACC
AC_PROG_CC
##AC_PROG_CPP
AC_PROG_LEX
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_LIBTOOL

AC_PROG_FC(gfortran g77)

# This test only sets fortran options up correctly if 
# a GCC compiler is used. Should check many others!
if test x$G77 = xyes; then
   CCP4_FFLAGS="-fno-second-underscore -fno-globals"
   echo "Using g77 flags: $FFLAGS $CCP4_FFLAGS"
fi

# This test only sets fortran options up correctly if 
# a GCC compiler is used. Should check many others!
if test x$GFORTRAN != x; then
   CCP4_FCFLAGS="fno-second-underscore -fno-globals"
   echo "Using gfortran flags: $FFLAGS $CCP4_FCFLAGS"
fi

AC_SUBST(CCP4_FFLAGS)
AC_SUBST(CCP4_FCFLAGS)

# This bit of code is to help the xdl_view library determine the
# correct Fortran to C calling convention 
_AC_F77_NAME_MANGLING
case "$ac_cv_f77_mangling" in
  "upper case, no underscore, no extra underscore" | \
  "upper case, no underscores")
    AC_DEFINE(LINKTYP, 2) ;;
  "lower case, no underscore, no extra underscore" | \
  "lower case, no underscores" )
    AC_DEFINE(LINKTYP, 3) ;;
  "lower case, underscore, no extra underscore" | \
  "lower case, single underscores")
    AC_DEFINE(LINKTYP, 1) ;;
  "lower case, underscore, extra underscore" | \
  "lower case, double underscores")
    AC_DEFINE(LINKTYP, 1)
    # We aren't set up for f2c-style double underscoring.
    if test "$G77" = yes; then
      AC_MSG_WARN([
*** You need to use option -fno-second-underscore with g77
*** to compile Fortran to link with xdl_view.
])
      AM_FFLAGS="-fno-second-underscore $AM_FFLAGS"
    else
      AC_MSG_WARN([
*** Your Fortran compiler looks like f2c.
*** You can't currently link xdl_view routines with Fortran compiled with it.
*** You could use g77 with option `'-fno-second-underscore' instead.])
    fi ;;
  *)
    AC_MSG_ERROR([Unknown sort of Fortran name mangling]) ;;
esac

# We need to invoke m4 in lib/src, so let's get its full path
AC_PATH_PROG([M4],[m4],:,[/usr/bin /bin /usr/local/bin])

# See if user wants to build clipper. Default is no.

AC_ARG_ENABLE(clipper,
   AS_HELP_STRING([--enable-clipper],[Compile clipper libraries (needed for pirate) (no)]),
   [case $enableval in
   yes) enable_clipper=yes;;
   no) enable_clipper=no;;
   esac],
   [enable_clipper=no])
AM_CONDITIONAL(COMPILE_CLIPPER, [test x$enable_clipper = xyes])

# Option to enable X applications
AC_ARG_ENABLE(x-apps,
    AS_HELP_STRING([--enable-x-apps],[Compile x-windows apps (yes)]),
   [case $enableval in
   yes) enable_xapps=yes;;
   no) enable_xapps=no;;
   esac],
    [enable_xapps=yes]) 
AM_CONDITIONAL(COMPILE_XAPPS, test x$enable_xapps = xyes)

# Option to enable unsupported applications
AC_ARG_ENABLE(unsupported,
    AS_HELP_STRING([--enable-unsupported],[Compile unsupported apps (yes)]),
   [case $enableval in
   yes) enable_unsupp=yes;;
   no) enable_unsupp=no;;
   esac],
    [enable_unsupp=yes]) 
AM_CONDITIONAL(COMPILE_UNSUPP, test x$enable_unsupp = xyes)


### Look for atlas lapack ###
compile_lapack=no
AC_MSG_CHECKING([for system lapack libraries])
lapack_save_DFLAGS=$LDFLAGS
LDFLAGS="$LDFLAGS -L/usr/lib/atlas"
AC_CHECK_LIB([lapack],[main],[LAPACK_LIBS="-L/usr/lib/atlas -llapack"],
			     [LAPACK_LIBS=""])
LDFLAGS=$lapack_save_DFLAGS
compile_lapack=no
if test "x$LAPACK_LIBS" = "x" ; then 
   # atlas not found, search for lapack
   AC_CHECK_LIB([lapack],[main],[LAPACK_LIBS="-llapack"],
			        [LAPACK_LIBS=""])
   if test "x$LAPACK_LIBS" = "x" ; then
      # ...no. We build our own version
      AC_MSG_RESULT([will build ccp4 version of lapack])
      compile_lapack=yes
   else
      AC_MSG_RESULT([will use system lapack library])
      compile_lapack=no
   fi
else
   AC_MSG_RESULT([will use system atlas/lapack library])
   compile_lapack=no
fi
AM_CONDITIONAL(COMPILE_LAPACK, test x$compile_lapack = xyes)
AC_SUBST(LAPACK_LIBS)

### end of lapack check ###

### mmdb check ###

compile_mmdb=no
AC_CHECK_LIB([mmdb], [main],[MMDB_LIBS="-lmmdb"],[MMDB_LIBS=""])
if test -z $MMDB_LIBS ; then 
      AC_MSG_RESULT([will build mmdb])
      compile_mmdb=yes
fi
AM_CONDITIONAL(COMPILE_MMDB, test x$compile_mmdb = xyes)
AC_SUBST(MMDB_LIBS)

### end of mmdb check ###

### ssm check ###

compile_ssm=no
AC_CHECK_LIB([ssm], [main],[SSM_LIBS="-lssm"],[SSM_LIBS=""])
if test -z $SSM_LIBS ; then 
   if test x$enable_clipper == "xyes"; then
      AC_MSG_RESULT([will build ssm])
      compile_ssm=yes
   fi
fi
AM_CONDITIONAL(COMPILE_SSM, test x$compile_ssm = xyes)
AC_SUBST(SSM_LIBS)

### end of ssm check ###

# Determine whether we need to compile fftw. This piece of code runs
# an external macro in fftw.m4 that defines FFTW_CXXFLAGS and 
# FFTW_LIBS
compile_fftw=no
if test x$enable_clipper = xyes ; then 
   AC_MSG_NOTICE([Clipper libraries enabled])
   AM_PATH_FFTW([compile_fftw=no],[compile_fftw=yes])
fi
AM_CONDITIONAL(COMPILE_FFTW, test x$compile_fftw = xyes)



AC_CHECK_LIB([m], [sqrt])
AC_CHECK_LIB(X11,main)
AC_CHECK_LIB(Xt,main)
AC_CHECK_LIB(Xaw,main)


# Checks for header files.
AC_PATH_X
# AC_PATH_X is weirdly not working on sebulpa
AC_FUNC_ALLOCA
AC_HEADER_STDC
AC_HEADER_SYS_WAIT
AC_CHECK_HEADERS([fcntl.h float.h libintl.h limits.h locale.h malloc.h netdb.h netinet/in.h regex.h stddef.h stdlib.h string.h strings.h sys/file.h sys/param.h sys/socket.h sys/time.h termios.h unistd.h wchar.h wctype.h])

# Local macro, defined in ./config/
CCIF_STRDUP_DECL

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_CONST
AC_C_INLINE
AC_TYPE_INT32_T
AC_TYPE_MODE_T
AC_TYPE_OFF_T
AC_TYPE_PID_T
AC_C_RESTRICT
AC_TYPE_SIZE_T
AC_HEADER_TIME
AC_STRUCT_TM
AC_TYPE_UINT32_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_FORK
AC_FUNC_MALLOC
AC_FUNC_MBRTOWC
AC_FUNC_MEMCMP
AC_FUNC_REALLOC
AC_FUNC_SELECT_ARGTYPES
AC_FUNC_SETVBUF_REVERSED
AC_TYPE_SIGNAL
AC_FUNC_STAT
AC_FUNC_STRTOD
AC_FUNC_VPRINTF
AC_CHECK_FUNCS([endpwent floor getcwd gettimeofday localtime_r mbrlen memmove memset mkdir modf pow putenv re_comp regcomp rint select setenv socket sqrt strcasecmp strchr strcspn strdup strerror strncasecmp strpbrk strrchr strstr strtol])

AM_CONDITIONAL(DEBUG, test "$ac_cv_enable_debug" = yes)

AC_CONFIG_FILES([Makefile
		lib/Makefile
		lib/ccif/Makefile
                lib/src/Makefile
		lib/data/Makefile
		src/Makefile
		src/ccp4mapwish_/Makefile
		unsupported/Makefile
		unsupported/src/Makefile
		x-windows/Makefile
		x-windows/xdl_view/Makefile
		x-windows/xdl_view/src/Makefile
		x-windows/libjwc/Makefile
		x-windows/libjwc/libjwc_c/Makefile
		x-windows/libjwc/libjwc_f/Makefile
		x-windows/xdlgjk/Makefile
                x-windows/Rotgen/Makefile
                x-windows/hklview_/Makefile
                x-windows/XCCPJIFFY/Makefile
		x-windows/Mosflm/Makefile
		x-windows/Mosflm/mosflm/Makefile
		x-windows/ipdisp/Makefile
		etc/Makefile
		include/Makefile
		help/Makefile
		html/Makefile
		ccp4i/Makefile
		doc/Makefile
		manual/Makefile
		ccp4-6.0.2-setup.sh
		])

if test x$enable_clipper = xyes; then
AC_CONFIG_FILES([
		lib/clipper/Makefile
		lib/clipper/config/Makefile
		lib/clipper/clipper/Makefile
		lib/clipper/clipper/ccp4/Makefile
		lib/clipper/clipper/cctbx/Makefile
		lib/clipper/clipper/cif/Makefile
		lib/clipper/clipper/cns/Makefile
		lib/clipper/clipper/contrib/Makefile
		lib/clipper/clipper/core/Makefile
		lib/clipper/clipper/minimol/Makefile
		lib/clipper/clipper/mmdb/Makefile
		lib/clipper/clipper/mmdbold/Makefile
		lib/clipper/clipper/mtz/Makefile
		lib/clipper/clipper/phs/Makefile
		lib/clipper/examples/Makefile
		lib/clipper/dox/Makefile
		lib/clipper/src/Makefile
		lib/clipper/src/pirate/Makefile
		])
fi

if test x$compile_lapack = xyes; then
AC_CONFIG_FILES([
		lib/lapack/Makefile
		lib/lapack/src/Makefile
		lib/lapack/blas/src/Makefile
		])
fi

AC_OUTPUT






echo
echo "     Configuration Summary"
echo " ------------------------------"
echo "clipper:               $enable_clipper"
echo "unsupported apps:      $enable_unsupp"
echo "x-windows apps:        $enable_xapps"

if test x$compile_mmdb = xyes; then
echo "mmdb:                  will compile"
else
echo "mmdb:                  found it"
fi

if test x$enable_clipper = xyes; then
   if test x$compile_ssm = xyes; then
      echo "ssm:                   will compile"
   else
      echo "ssm:                   found it"
   fi

   if test x$compile_fftw = xyes; then       
      echo "fftw:                  will compile"
   else
      echo "fftw:                  found it"
   fi
fi

if test x$compile_lapack = xyes; then
   echo "lapack:                will compile"
else
   echo "lapack:                found it"
fi

####
