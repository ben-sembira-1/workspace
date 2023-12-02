#!/bin/bash

SCRIPTS=$(dirname $0)/scripts/

sudo apt update
sudo apt upgrade

sudo apt install \
    tree \
    tmux \

bash ${SCRIPTS}/setup_docker.sh

echo "Finsihed, Please reboot the system"
