#!/bin/bash

set -euo pipefail

DOWNLOAD_DIR=~/Downloads/easyeda
SCRIPT_DIR=`dirname $0`

rm -r ${DOWNLOAD_DIR} || echo "No old easyeda installation dir to remove, probably first installation on this computer"
rm -r ~/Documents/EasyEDA-Pro/ || echo "No old easyeda documents dir to remove, probably first installation on this computer"
mkdir -p ${DOWNLOAD_DIR}
pushd ${DOWNLOAD_DIR}
wget https://image.easyeda.com/files/easyeda-pro-linux-x64-2.2.37.7.zip -O easyeda-pro-linux.zip
unzip easyeda-pro-linux.zip
sudo bash ./install.sh
popd
timeout -s SIGTERM 10s /opt/easyeda-pro/easyeda-pro %f --no-sandbox || true
echo "Closed easyeda (It is probable that some errors jump out because of the sigterm signal)"
cp ${SCRIPT_DIR}/lceda-pro-activation.txt ~/Documents/EasyEDA-Pro/lceda-pro-activation.txt
