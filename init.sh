#!/bin/bash

set -eo pipefail

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get install -y ansible

