#!/bin/bash
set -e
set -x

version="1.0.0"

export DEBIAN_FRONTEND=noninteractive

sh -c "echo 'deb http://download.opensuse.org/repositories/home:/katacontainers:/release/xUbuntu_$(lsb_release -rs)/ /' > /etc/apt/sources.list.d/kata-containers.list"

curl -sL  http://download.opensuse.org/repositories/home:/katacontainers:/release/xUbuntu_$(lsb_release -rs)/Release.key | sudo apt-key add -

apt-get update

apt-get -y install --no-install-recommends \
        ca-certificates \
        iptables \
		kata-runtime \
		kata-proxy \
		kata-shim 
