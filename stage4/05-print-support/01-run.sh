#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

on_chroot <<EOF
adduser "$FIRST_USER_NAME" lpadmin
EOF
