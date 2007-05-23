x# -*- mode: Autoconf; mode: font-lock -*-
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
AC_PROG_CPP
AC_PROG_LEX
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_LIBTOOL

AC_PROG_F77

if test $G77 = "yes"; then
   FFLAGS="$FFLAGS -fno-second-underscore -fno-globals -DGFORTRAN -DPROTOTYPE"
   echo "Using g77 flags: $FLAGS"
fi

_AC_F77_NAME_MANGLING
dnl The alternatives in the cases here could be left over from a previous
dnl config.cache -- autoconf changed.
#echo "$ac_cv_f77_mangling"--
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
      FFLAGS="-fno-second-underscore $FFLAGS"
    else
      AC_MSG_WARN([
*** Your Fortran compiler looks like f2c.
*** You can't currently link xdl_view routines with Fortran compiled with it.
*** You could use g77 with option `'-fno-second-underscore' instead.])
    fi ;;
  *)
    AC_MSG_ERROR([Unknown sort of Fortran name mangling]) ;;
esac



# We need to invoke m4, so let's get its full path
AC_PATH_PROG([M4],[m4],:,[/usr/bin /bin /usr/local/bin])

# Checks for libraries.
dnl # FIXME: Replace `main' with a function in `-lAppleWM': */
dnl AC_CHECK_LIB([AppleWM], [main]) */
dnl # FIXME: Replace `main' with a function in `-lC': */
dnl AC_CHECK_LIB([C], [main]) */
dnl # FIXME: Replace `main' with a function in `-lFS': */
dnl AC_CHECK_LIB([FS], [main]) */
dnl # FIXME: Replace `main' with a function in `-lGL': */
dnl AC_CHECK_LIB([GL], [main]) */
dnl # FIXME: Replace `main' with a function in `-lGLU': */
dnl AC_CHECK_LIB([GLU], [main]) */
dnl # FIXME: Replace `main' with a function in `-lGLw': */
dnl AC_CHECK_LIB([GLw], [main]) */
dnl # FIXME: Replace `main' with a function in `-lICE': */
dnl AC_CHECK_LIB([ICE], [main]) */
dnl # FIXME: Replace `main' with a function in `-lSM': */
dnl AC_CHECK_LIB([SM], [main]) */
dnl # FIXME: Replace `main' with a function in `-lWindowsWM': */
dnl AC_CHECK_LIB([WindowsWM], [main]) */
dnl # FIXME: Replace `main' with a function in `-lX11': */
dnl AC_CHECK_LIB([X11], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXRes': */
dnl AC_CHECK_LIB([XRes], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXTrap': */
dnl AC_CHECK_LIB([XTrap], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXa': */
dnl AC_CHECK_LIB([Xa], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXau': */
dnl AC_CHECK_LIB([Xau], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXaw': */
dnl AC_CHECK_LIB([Xaw], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXbsd': */
dnl AC_CHECK_LIB([Xbsd], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXcomposite': */
dnl AC_CHECK_LIB([Xcomposite], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXcursor': */
dnl AC_CHECK_LIB([Xcursor], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXdamage': */
dnl AC_CHECK_LIB([Xdamage], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXdmcp': */
dnl AC_CHECK_LIB([Xdmcp], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXevie': */
dnl AC_CHECK_LIB([Xevie], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXext': */
dnl AC_CHECK_LIB([Xext], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXfixes': */
dnl AC_CHECK_LIB([Xfixes], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXfont': */
dnl AC_CHECK_LIB([Xfont], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXfontcache': */
dnl AC_CHECK_LIB([Xfontcache], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXft': */
dnl AC_CHECK_LIB([Xft], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXi': */
dnl AC_CHECK_LIB([Xi], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXinerama': */
dnl AC_CHECK_LIB([Xinerama], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXkey': */
dnl AC_CHECK_LIB([Xkey], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXmu': */
dnl AC_CHECK_LIB([Xmu], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXmuu': */
dnl AC_CHECK_LIB([Xmuu], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXp': */
dnl AC_CHECK_LIB([Xp], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXpm': */
dnl AC_CHECK_LIB([Xpm], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXrandr': */
dnl AC_CHECK_LIB([Xrandr], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXrender': */
dnl AC_CHECK_LIB([Xrender], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXss': */
dnl AC_CHECK_LIB([Xss], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXt': */
dnl AC_CHECK_LIB([Xt], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXtst': */
dnl AC_CHECK_LIB([Xtst], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXv': */
dnl AC_CHECK_LIB([Xv], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXvMC': */
dnl AC_CHECK_LIB([XvMC], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXxf86dga': */
dnl AC_CHECK_LIB([Xxf86dga], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXxf86misc': */
dnl AC_CHECK_LIB([Xxf86misc], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXxf86rush': */
dnl AC_CHECK_LIB([Xxf86rush], [main]) */
dnl # FIXME: Replace `main' with a function in `-lXxf86vm': */
dnl AC_CHECK_LIB([Xxf86vm], [main]) */
dnl # FIXME: Replace `main' with a function in `-latex': */
dnl AC_CHECK_LIB([atex], [main]) */
# FIXME: Replace `main' with a function in `-lccp4':
#AC_CHECK_LIB([ccp4], [main])
# FIXME: Replace `main' with a function in `-lccp4c':
#AC_CHECK_LIB([ccp4c], [main])
# FIXME: Replace `main' with a function in `-lccp4f':
#AC_CHECK_LIB([ccp4f], [main])
# FIXME: Replace `main' with a function in `-ldmx':
#AC_CHECK_LIB([dmx], [main])
# FIXME: Replace `main' with a function in `-ldps':
#AC_CHECK_LIB([dps], [main])
# FIXME: Replace `main' with a function in `-ldpstk':
#AC_CHECK_LIB([dpstk], [main])
# FIXME: Replace `main' with a function in `-lexpat':
#AC_CHECK_LIB([expat], [main])
# FIXME: Replace `main' with a function in `-lfl':
#AC_CHECK_LIB([fl], [main])
# FIXME: Replace `main' with a function in `-lfntstubs':
#AC_CHECK_LIB([fntstubs], [main])
# FIXME: Replace `main' with a function in `-lfontconfig':
#AC_CHECK_LIB([fontconfig], [main])
# FIXME: Replace `main' with a function in `-lfontenc':
#AC_CHECK_LIB([fontenc], [main])
# FIXME: Replace `main' with a function in `-lfpe':
#AC_CHECK_LIB([fpe], [main])
# FIXME: Replace `main' with a function in `-lfreetype':
#AC_CHECK_LIB([freetype], [main])
# FIXME: Replace `main' with a function in `-lg2c':
#AC_CHECK_LIB([g2c], [main])
# FIXME: Replace `main' with a function in `-lgcc':
#AC_CHECK_LIB([gcc], [main])
# FIXME: Replace `main' with a function in `-lgfortran':
AC_CHECK_LIB([gfortran], [main])
# FIXME: Replace `main' with a function in `-llapack':
AC_CHECK_LIB([lapack], [main])
# FIXME: Replace `main' with a function in `-lm':
AC_CHECK_LIB([m], [main])
# FIXME: Replace `main' with a function in `-lmmdb':
AC_CHECK_LIB([mmdb], [main])
# FIXME: Replace `main' with a function in `-loldX':
#AC_CHECK_LIB([oldX], [main])
# FIXME: Replace `main' with a function in `-lpng':
#AC_CHECK_LIB([png], [main])
# FIXME: Replace `main' with a function in `-lpsres':
#AC_CHECK_LIB([psres], [main])
# FIXME: Replace `main' with a function in `-lselinux':
#AC_CHECK_LIB([selinux], [main])
# FIXME: Replace `main' with a function in `-lxdl_view':
#AC_CHECK_LIB([xdl_view], [main])
# FIXME: Replace `main' with a function in `-lxkbfile':
#AC_CHECK_LIB([xkbfile], [main])
# FIXME: Replace `main' with a function in `-lxkbui':
#AC_CHECK_LIB([xkbui], [main])

# Checks for header files.
AC_PATH_X
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
		lib/lapack/Makefile
		lib/lapack/src/Makefile
		lib/lapack/blas/src/Makefile
		src/Makefile
		src/ccp4mapwish_/Makefile
		unsupported/src/Makefile
		x-windows/Makefile
		x-windows/xdl_view/src/Makefile
		x-windows/libjwc/libjwc_c/Makefile
		x-windows/libjwc/libjwc_f/Makefile
		x-windows/xdlgjk/Makefile
                x-windows/Rotgen/Makefile
                x-windows/hklview_/Makefile
                x-windows/XCCPJIFFY/Makefile
		x-windows/Mosflm/Makefile
		x-windows/Mosflm/mosflm/Makefile
		x-windows/ipdisp/Makefile
		])
#AC_CONFIG_SUBDIRS([lib/ccif
#                   x-windows/Mosflm

#                   x-windows/libjwc/libjwc_c
#                   x-windows/libjwc/libjwc_f
#                   x-windows/xdl_view/src])
AC_OUTPUT

####
