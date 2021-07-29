#!/bin/bash

set -eo pipefail

# Install System Ansible version with python/pip
python3 -m pip install --upgrade pip
python3 -m pip install ansible-core

