# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "uuhome-dev"
  config.vm.network :private_network, ip: "10.2.0.10"
  config.vm.synced_folder ".", "/service/sites/uuhome"
  config.vm.provision "shell", path: "bin/provision.sh", privileged: false
  config.vm.provider "virtualbox" do |vb|
    vb.name   = "uuhome-dev"
    vb.memory = "2048"
  end
end
