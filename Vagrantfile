# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'

server_config = YAML.load_file("config.yaml")

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "shell", path: "Server/config.sh"
  if !server_config["packages"].nil?
    server_config["packages"].each do |package|
      config.vm.provision "shell", inline: "apt-get install " + package + " -y &> /dev/null"
    end
  end
end
