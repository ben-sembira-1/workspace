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
    curl \
    simple-scan \
    default-jre \
    default-jdk \
    logisim \
    zoom

source ${SCRIPTS}/setup_homebrew.sh
bash ${SCRIPTS}/setup_git.sh
bash ${SCRIPTS}/setup_docker.sh
bash ${SCRIPTS}/setup_virtualbox.sh
bash ${SCRIPTS}/arduino/setup_arduino.sh
bash ${SCRIPTS}/arduino/setup_tau_vpn.sh

echo "Finsihed, Please reboot the system"
