# vagrant-go-docker

This project provides you Go+Docker environment inside Virtualbox VM. It is created as a replacement to `boot2docker`.

That said, this is a **DEVELOPMENT ONLY** setup. Do not run this VM in production because we turn off TLS intentionally.


## Getting started

1. git clone this repo

2. Bring up the VM: `vagrant up (ubuntu-1404|centos-7)`. by default the Ubuntu VM uses `192.168.50.240` while CentOS 7 VM uses `192.168.50.241`.

3. Start using it. Example connecting to CentOS 7 docker: `docker -H tcp://192.168.50.241:2375 ps`


## If you are migrating from boot2docker

1. Commented/Remove the following environment variables from `~/.profile`. They are not needed anymore. Don't forget to `source ~/.profile`.
    ```
    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
    ```

2. Stop and remove boot2docker: `boot2docker down && boot2docker delete`
