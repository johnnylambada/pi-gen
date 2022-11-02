#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

if [ ! -d "${ROOTFS_DIR}" ]; then
	copy_previous
fi
