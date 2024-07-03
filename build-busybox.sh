#!/bin/bash

set -x

if [ ! -d ~/busybox ]; then
  git clone --depth 1 \
    https://git.busybox.net/busybox/ ~/busybox/
fi

pushd ~/busybox/
make defconfig
echo 'CONFIG_EXTRA_CFLAGS="-static"' >> .config
make

popd

