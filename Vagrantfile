Vagrant.configure("2") do |config|

#Aanmaken van de management node
config.vm.define :management do |management_config|
	management_config.vm.box = "ubuntu/trusty64"
	management_config.vm.hostname = "management"
	management_config.vm.network :privte_network, ip: "10.0.15.20"
	management_config.vm.provider  "virtualbox" do |vb|
		vb.memory = "256"
		end
	management_config.vm.provision  "shell", path: "management.sh"
end

#Aanmaken van de load balancer
config.vm.define :lb do |lb_config|
	lb_config.vm.box = "ubuntu/trusty64"
	lb_config.vm.hostname = "load balancer"
	lb_config.vm.network :private_network, ip: "10.0.15.21"
	lb_config.vm.network "forwarded_port", guest: 80, host: 1230
	lb_config.vm.provider "virtualbox" do |vb|
		vb.memory = "256"
		end
end

#Aanmaken van enkele webservers
config.vm.define "web_1" do |websrvr|
	websrvr.vm.box = "ubuntu/trusty64"
	websrvr.vm.hostname = "web_1"
	websrvr.vm.network :private_network, ip: "10.0.15.31"
	websrvr.vm.network "forwarded_port", guest: 80, host: "8081"
	websrvr.vm.provider "virtualbox" do |vb|
		vb.memory = "256"
		end
end

config.vm.define "web_2" do |websrvr|
	websrvr.vm.box = "ubuntu/trusty64"
	websrvr.vm.hostname = "web_2"
	websrvr.vm.network :private_network, ip: "10.0.15.3"
	websrvr.vm.network "forwarded_port", guest: 80, host: "8082"
	websrvr.vm.provider "virtualbox" do |vb|
		vb.memory = "256"
		end
end