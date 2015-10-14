# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Box
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "codervault"
  config.vm.synced_folder "./src", "/home/vagrant/CoderVault"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # Provisioning
  config.vm.provision "shell", path: "./provisioning/install-rvm.sh", args: "stable", privileged: false
  config.vm.provision "shell", path: "./provisioning/install-ruby.sh", args: "2.2 rails", privileged: false

  # VirtualBox
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.cpus = 1
    vb.memory = "512"
  end

end
