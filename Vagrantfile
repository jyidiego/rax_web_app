# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  Vagrant.require_plugin "vagrant-rackspace"
  config.vm.box = "dummy"
  config.ssh.private_key_path = "/Users/john6735/.ssh/id_rsa"

  config.vm.provider :rackspace do |rs|
    rs.username = "jyidiego"
    rs.api_key  = "b1386e8825b44ed9a49349631ef5839f"
    rs.flavor   = /1 GB Performance/
    rs.image    = /science_linux_vagrant/
    rs.public_key_path = "/Users/john6735/.ssh/id_rsa.pub"
    rs.server_name = "dnstest.jyidiego.net"
    rs.rackspace_region = :iad
  end

  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[rax_web_app::default]"
    ]
  end
end
