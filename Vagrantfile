# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  	config.vm.box = "ubuntu/trusty64"
  	config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.synced_folder "Web/", "/var/www"
	  config.vm.provision "file", source: "Server/nginx", destination: "/var/www/nginx"
  	config.vm.provision "shell", path: "Server/config.sh"
end
