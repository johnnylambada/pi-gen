#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

if [ -f "${ROOTFS_DIR}/etc/ld.so.preload" ]; then
   mv "${ROOTFS_DIR}/etc/ld.so.preload" "${ROOTFS_DIR}/etc/ld.so.preload.disabled"
fi

