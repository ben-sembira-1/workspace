#!/bin/bash

SCRIPTS=$(dirname $0)/scripts/

sudo apt update
sudo apt upgrade

sudo apt install -y \
    tree \
    tmux \
    vim \
    python-is-python3 \
    ipython3 \
    nodejs \
    npm \
    meld \

bash ${SCRIPTS}/setup_git.sh

bash ${SCRIPTS}/setup_docker.sh

echo "Finsihed, Please reboot the system"
