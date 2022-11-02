#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

if [ ! -x "${ROOTFS_DIR}/usr/bin/qemu-arm-static" ]; then
	cp /usr/bin/qemu-arm-static "${ROOTFS_DIR}/usr/bin/"
fi

if [ -e "${ROOTFS_DIR}/etc/ld.so.preload" ]; then
	mv "${ROOTFS_DIR}/etc/ld.so.preload" "${ROOTFS_DIR}/etc/ld.so.preload.disabled"
fi
