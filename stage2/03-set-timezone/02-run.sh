#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

echo "${TIMEZONE_DEFAULT}" > "${ROOTFS_DIR}/etc/timezone"
rm "${ROOTFS_DIR}/etc/localtime"

on_chroot << EOF
dpkg-reconfigure -f noninteractive tzdata
EOF
