# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

VM_LIST = [
  {
    name: 'ubuntu-1404',
    box: 'phusion/ubuntu-14.04-amd64',
    ip: '192.168.50.240'
  },
  {
    name: 'centos-7',
    box: 'metcalfc/centos70-docker',
    ip: '192.168.50.241'
  }
]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  VM_LIST.each do |vm_meta|
    config.vm.define vm_meta[:name] do |v|
      v.vm.box = vm_meta[:box]
      v.vm.provision :shell, path: "provisioning/#{vm_meta[:name]}.sh"
      v.vm.network :private_network, type: :static, ip: vm_meta[:ip]
    end
  end

  config.ssh.forward_agent = true

  config.vm.synced_folder(ENV['GOPATH'], "/go") if ENV['GOPATH']
end
