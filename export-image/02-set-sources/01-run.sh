#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

rm -f "${ROOTFS_DIR}/etc/apt/apt.conf.d/51cache"
find "${ROOTFS_DIR}/var/lib/apt/lists/" -type f -delete
on_chroot << EOF
apt-get update
apt-get -y dist-upgrade
apt-get clean
EOF
