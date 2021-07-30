#!/bin/bash

set -eo pipefail

# Allow user 'joel' to use sudo without password
sudo cat << EOF | (sudo su -c 'EDITOR="tee" visudo -f /etc/sudoers.d/joel')
# User rules for joel
joel ALL=(ALL) NOPASSWD:ALL
EOF

sudo apt-get install -y vim git python3-pip

# Install System Ansible version with python/pip
python3 -m pip install --upgrade pip
python3 -m pip install ansible-core

