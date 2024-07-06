#!/bin/bash

set -x

mkdir ~/rootfs

pushd ~/rootfs

mkdir -p usr/{sbin,bin} bin sbin boot
mkdir -p {dev,etc,home,lib}
mkdir -p {mnt,opt,proc,srv,sys}
mkdir -p var/{lib,lock,log,run,spool}
install -d -m 0750 root
install -d -m 1777 tmp
mkdir -p usr/{include,lib,share,src}

cp ~/linux/arch/x86/boot/bzImage boot/bzImage
cp ~/busybox/busybox usr/bin/busybox

for util in $(./usr/bin/busybox --list-full); do
  ln -s /usr/bin/busybox $util
done

cp ~/busybox/examples/inittab etc/inittab

mkdir -p etc/init.d proc sys dev
echo 'proc    /proc   proc    defaults' >> etc/fstab
echo 'sysfs   /sys    sysfs   defaults' >> etc/fstab
echo 'mount -a' >> etc/init.d/rcS
chmod +x etc/init.d/rcS
