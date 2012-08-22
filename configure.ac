AC_INIT([lightdm-remote-session-uccsconfigure], [0.2])

AM_INIT_AUTOMAKE([1.11 -Wno-portability])
AM_SILENT_RULES([yes])

###########################
# Local Install
###########################

with_localinstall="no"
AC_ARG_ENABLE(localinstall, AS_HELP_STRING([--enable-localinstall],
                                           [install all files locally (for distcheck)]),
              with_localinstall=$enableval,
              with_localinstall=no)

AC_CONFIG_FILES([
  Makefile
])
AC_OUTPUT
