#!/bin/bash

set -x

# Taken from https://docs.kernel.org/admin-guide/quickly-build-trimmed-linux.html

if [ ! -d ~/linux ]; then
  git clone --depth 1 -b master \
    https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git ~/linux/
fi

cd ~/linux/
# Hint: if you want to apply patches, do it at this point. See below for details.
# Hint: it's recommended to tag your build at this point. See below for details.
yes "" | make localmodconfig
# Hint: at this point you might want to adjust the build configuration; you'll
#   have to, if you are running Debian. See below for details.
make -j $(nproc --all)
# Note: on many commodity distributions the next command suffices, but on Arch
#   Linux, its derivatives, and some others it does not. See below for details.
# command -v installkernel && sudo make modules_install install

uname -a

echo Reboot