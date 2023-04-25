$script = <<-SCRIPT
sudo dnf -y upgrade
sudo dnf -y group install "Development Tools"
sudo dnf -y group install "C Development Tools and Libraries"
sudo dnf -y install bc
sudo dnf -y install htop
SCRIPT

Vagrant.configure(2) do |config|

    config.vm.synced_folder ".", "/vagrant", disabled: false

    config.vm.define "fedora" do |fedora|
        fedora.vm.box = "fedora"
        fedora.vm.provider 'libvirt' do |provider|
            fedora.vm.box_url = "https://mirror.23media.com/fedora/linux/releases/38/Cloud/x86_64/images/Fedora-Cloud-Base-Vagrant-38-1.6.x86_64.vagrant-libvirt.box"
            provider.memory = 2048
            provider.cpus = 4
        end
        config.vm.provision "shell", inline: $script
    end
end