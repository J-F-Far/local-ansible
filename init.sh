#!/bin/bash

set -eo pipefail

# Allow user 'joel' to use sudo without password
sudo cat << EOF | (sudo su -c 'EDITOR="tee" visudo -f /etc/sudoers.d/joel')
# User rules for joel
joel ALL=(ALL) NOPASSWD:ALL
EOF

sudo apt-get install -y git
sudo apt-get install -y python3-pip
sudo apt-get install -y vim

# Install System Ansible version with python/pip
# ( as of writing this script, only Ansible 2.9 is available
# from Linux Mint 20.2 software center
python3 -m pip install --upgrade pip
python3 -m pip install ansible-core

