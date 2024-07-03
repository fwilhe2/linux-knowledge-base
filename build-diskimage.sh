#!/bin/bash

set -x

/sbin/mkfs.ext4 -L root -d ~/rootfs/ rootfs.ext4 2G
