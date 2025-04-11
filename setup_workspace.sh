#!/bin/bash

set -euo pipefail

MODULES=$(dirname $0)/modules/

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
    zoom \
    ffmpeg \
    iverilog \
    gtkwave

source ${MODULES}/setup_homebrew.sh
bash ${MODULES}/setup_git.sh
bash ${MODULES}/setup_docker.sh
bash ${MODULES}/setup_virtualbox.sh
bash ${MODULES}/arduino/setup_arduino.sh
bash ${MODULES}/arduino/setup_tau_vpn.sh
bash ${MODULES}/easyeda/setup_easyeda.sh

echo "Finsihed, Please reboot the system"
