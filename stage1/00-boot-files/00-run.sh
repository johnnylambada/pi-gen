#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"
