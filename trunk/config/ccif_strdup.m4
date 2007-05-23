AC_DEFUN([CCIF_STRDUP_DECL], [
dnl This check works by trying to link a program with a declaration of strdup
dnl that is incompatible with the proper one, if it exists.
dnl This is necessary because the Xopen/UNIX95/UNIX98 stuff doesn't allow strdup,
dnl even though most rtl's have it.
dnl WARNING: this check assumes that the linker will find strdup, even if
dnl the compiler is unable to find a declaration of it!
AC_CACHE_CHECK(whether strdup declared in string.h,
               ccif_cv_strdup_decl,
               [AC_LINK_IFELSE(
		[AC_LANG_PROGRAM([[#include <string.h>
                                   float *strdup (const char *s1);]],
                                 [[ float *f = strdup("hello");]])],
                            ccif_cv_strdup_decl='no',
                            ccif_cv_strdup_decl='yes'
                           )
               ]
             )
if test "$ccif_cv_strdup_decl" = "yes" ; then
   AC_DEFINE(STRDUP_DECL)
fi
])
