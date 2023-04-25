$script = <<-SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT

Vagrant.configure(2) do |config|

    config.vm.synced_folder ".", "/vagrant", disabled: false

    config.vm.define "fedora" do |fedora|
      fedora.vm.box = "fedora"

      fedora.vm.provider 'libvirt' do |provider|
        fedora.vm.box_url = "https://mirror.23media.com/fedora/linux/releases/38/Cloud/x86_64/images/Fedora-Cloud-Base-Vagrant-38-1.6.x86_64.vagrant-libvirt.box"
        provider.memory = 1024
        provider.cpus = 2
      end

      config.vm.provision "shell", inline: $script
end