#!/bin/bash

set -euo pipefail

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
    curl

bash ${SCRIPTS}/setup_homebrew.sh
bash ${SCRIPTS}/setup_git.sh
bash ${SCRIPTS}/setup_docker.sh
bash ${SCRIPTS}/setup_virtualbox.sh
bash ${SCRIPTS}/arduino/setup_arduino.sh

echo "Finsihed, Please reboot the system"
