#!/bin/sh

REMOTECONFIGURE_URL=https://services.arctica-project.org/remoteconfigure

if [ -f "/etc/default/lightdm-remote-session-remoteconfigure" ]; then
	. /etc/default/lightdm-remote-session-remoteconfigure
fi

firefox -no-remote "${REMOTECONFIGURE_URL}"
