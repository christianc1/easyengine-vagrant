# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # 64bit Ubuntu Box running 14.04
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |v|
        # Name our Box
        v.name = "project"

        # Changes these values depending on your host system specs
        v.customize ["modifyvm", :id, "--memory", 2048]
        v.customize ["modifyvm", :id, "--cpus", 2]
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end

    # Setup our Own Private Network
    config.vm.network "private_network", ip: "192.168.55.55"
    config.vm.hostname = "project.dev"
   
    # Setup our Initial Provisioner
    config.vm.provision "shell", path: "provision.sh"

    # Setup our Synced Folders
    config.vm.synced_folder "logs/", "/var/log/easyengine", owner: "root", group: "root"
    config.vm.synced_folder "www/", "/var/www", :owner => "www-data"

    # Setup our subdomains
    # Uncomment if you're using subdomain install of wp
    # config.hostsupdater.aliases = ["www.project.dev", "test.project.dev", "test2.project.dev", "test3.project.dev", "test4.project.dev", "test5.project.dev", "sample.project.dev", "demo.project.dev", "delete.project.dev" ]

end
