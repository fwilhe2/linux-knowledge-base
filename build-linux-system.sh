cd

if [ ! -d ~/toybox ]; then
  git clone --depth 1 \
    https://github.com/landley/toybox ~/toybox/
fi

pushd ~/toybox/
make defconfig toybox

popd

fallocate -l100M ~/my-linux.img

echo 'type=83' | sudo sfdisk ./my-linux.img

sudo losetup -P -f --show ./my-linux.img

sudo mkfs.ext4 /dev/loop0p1

mkdir image_root
sudo mount /dev/loop0p1 image_root
pushd image_root # it's assumed you do the following commands from this location
sudo mkdir -p usr/{sbin,bin} bin sbin boot

sudo mkdir -p {dev,etc,home,lib}
sudo mkdir -p {mnt,opt,proc,srv,sys}
sudo mkdir -p var/{lib,lock,log,run,spool}
sudo install -d -m 0750 root
sudo install -d -m 1777 tmp
sudo mkdir -p usr/{include,lib,share,src}

sudo cp /home/vagrant/linux/arch/x86/boot/bzImage boot/bzImage
sudo cp /home/vagrant/toybox/toybox usr/bin/toybox

for util in $(./usr/bin/toybox --long); do
  sudo ln -s ./usr/bin/toybox $util
done

sudo ln -s ./usr/bin/toybox ./bin/sh


qemu-system-x86_64 -nographic -enable-kvm \
                     -kernel /home/vagrant/linux/arch/x86/boot/bzImage \
                     -append "quiet init=/bin/sh root=/dev/sda1" \
                     ~/my-linux.img
