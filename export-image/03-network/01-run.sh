#!/bin/bash -e

[ ! -z "${DEBUG_SETX}" ] && set -x

install -m 644 files/resolv.conf "${ROOTFS_DIR}/etc/"
