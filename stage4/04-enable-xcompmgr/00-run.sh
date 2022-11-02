#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

on_chroot << EOF
	raspi-config nonint do_xcompmgr 0
EOF
