EXTRA_DIST =
CLEANFILES =

###############################
# The session configuration
###############################

lightdm_sessiondir = $(datadir)/lightdm/remote-sessions
lightdm_session_DATA = \
	remoteconfigure.desktop

%.desktop: %.desktop.in
	@sed \
		-e "s|\@pkgdatadir\@|$(pkgdatadir)|" \
		-e "s|\@pkglibexecdir\@|$(pkglibexecdir)|" \
		$< > $@

EXTRA_DIST += remoteconfigure.desktop.in
CLEANFILES += remoteconfigure.desktop

###############################
# The PAM session
###############################

pam_sessiondir = $(sysconfdir)/pam.d/
pam_session_DATA = \
	lightdm-remote-remoteconfigure

EXTRA_DIST += lightdm-remote-remoteconfigure

###############################
# The session script
###############################

session_startdir = $(pkgdatadir)
session_start_SCRIPTS = \
	remoteconfigure-session

remoteconfigure-session: remoteconfigure-session.in
	@sed -e "s|\@pkgdatadir\@|$(pkgdatadir)|" $< > $@
	@chmod +x $@

EXTRA_DIST += remoteconfigure-session.in
CLEANFILES += remoteconfigure-session

###############################
# The session wrapper
###############################

pkglibexec_PROGRAMS = \
	remoteconfigure-session-wrapper

remoteconfigure_session_wrapper_SOURCES = \
	remoteconfigure-session-wrapper.c
remoteconfigure_session_wrapper_CFLAGS = \
	-DPKGDATADIR="\"$(pkgdatadir)\"" \
	-Wall -Werror

###############################
# Apparmor for session wrapper
###############################

apparmordir = $(sysconfdir)/apparmor.d/
apparmor_DATA = \
	lightdm-remote-session-remoteconfigure

lightdm-remote-session-remoteconfigure: lightdm-remote-session-remoteconfigure.in
	@sed -e "s|\@pkglibexecdir\@|$(pkglibexecdir)|" $< > $@

EXTRA_DIST += lightdm-remote-session-remoteconfigure.in
CLEANFILES += lightdm-remote-session-remoteconfigure

###############################
# Autostart Firefox
###############################

autostart_filedir = $(pkgdatadir)
autostart_file_DATA = \
	firefox-remoteconfigure.desktop

EXTRA_DIST += firefox-remoteconfigure.desktop.in
CLEANFILES += firefox-remoteconfigure.desktop

###############################
# Firefox Start Script
###############################

firefox_startdir = $(pkgdatadir)
firefox_start_SCRIPTS = \
	firefox-remoteconfigure.sh

EXTRA_DIST += firefox-remoteconfigure.sh

###############################
# Dist check stuff
###############################
