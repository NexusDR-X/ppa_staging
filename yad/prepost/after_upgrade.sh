#!/usr/bin/env sh
# Runs AFTER installing package
glib-compile-schemas /usr/share/glib-2.0/schemas
gtk-update-icon-cache
exit 0
