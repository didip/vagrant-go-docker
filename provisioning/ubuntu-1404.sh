#!/bin/bash

apt-get update
apt-get install -y software-properties-common

# Install Docker
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker

# Install Go, godeb will install the latest version of Go.
curl https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz | tar zx -C /usr/local/bin
GOPATH=/go godeb install

# Setup Go
export GOPATH=/go
rm -rf $GOPATH/pkg/linux_amd64
echo 'export GOPATH=/go' > /etc/profile.d/go.sh
echo 'export PATH=$GOPATH/bin:$PATH' >> /etc/profile.d/go.sh

# Update Docker options
echo 'OPTIONS=--selinux-enabled -H unix:// -H tcp://0.0.0.0:2375' > /etc/sysconfig/docker
service docker restart