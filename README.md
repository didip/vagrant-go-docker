# vagrant-go-docker

This project provides you Go+Docker environment inside Virtualbox VM. It is created as a replacement to `boot2docker`.

That said, this is a **DEVELOPMENT ONLY** setup. Do not run this VM in production because we turn off TLS intentionally.


## Getting Started

1. git clone this repo

2. Bring up the VM: `vagrant up (ubuntu-1404|centos-7)`

3. Start using it, by default the Ubuntu VM uses `192.168.50.240` while CentOS 7 VM uses `192.168.50.241`. Example: `docker -H tcp://192.168.50.241:2375 ps`
