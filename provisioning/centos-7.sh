#!/bin/bash

yum -y update
yum -y install golang

# Setup Go
export GOPATH=/go
rm -rf $GOPATH/pkg/linux_amd64
echo 'export GOPATH=/go' > /etc/profile.d/go.sh
echo 'export PATH=$GOPATH/bin:$PATH' >> /etc/profile.d/go.sh

# Update Docker options
echo 'OPTIONS=--selinux-enabled -H unix:// -H tcp://0.0.0.0:2375' > /etc/sysconfig/docker
service docker restart