$scriptSystemSetup = <<-SCRIPT
sudo dnf -y upgrade
sudo dnf -y group install "Development Tools"
sudo dnf -y group install "C Development Tools and Libraries"
sudo dnf -y install ncurses-devel pkg-config dwarves zstd
sudo dnf -y install bc
sudo dnf -y install glibc-static
sudo dnf -y install qemu
sudo dnf -y install htop wget vim
SCRIPT

$scriptUserSetup = <<-SCRIPT
chmod +x ~/.dnf-aliases ~/.aliases
echo 'source $HOME/.dnf-aliases' >> ~/.bashrc
echo 'source $HOME/.aliases' >> ~/.bashrc
SCRIPT

Vagrant.configure("2") do |config|
    config.vm.box = "fedora/38-cloud-base"
    config.vm.synced_folder "./", "/vagrant", type: "rsync"
    config.vm.provider 'libvirt' do |provider|
        provider.memory = 2048
        provider.cpus = 4
    end
    config.vm.provision "file", source: "dnf-aliases.txt", destination: ".dnf-aliases"
    config.vm.provision "file", source: "aliases.txt", destination: ".aliases"
    config.vm.provision "shell", inline: $scriptSystemSetup
    config.vm.provision "shell", inline: $scriptUserSetup, privileged: false
end
