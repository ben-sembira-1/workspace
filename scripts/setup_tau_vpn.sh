#!/bin/bash
VPN_TAR_NAME="PanGPLinux-6.2.0-c10.tgz"
DOWNLOAD_PATH=~/Downloads/${VPN_TAR_NAME}
rm ${DOWNLOAD_PATH}
wget -O ${DOWNLOAD_PATH} https://hpcguide.tau.ac.il/vpn/${VPN_TAR_NAME}
EXTRACTION_DIR=~/Downloads/tau_vpn_download
rm -r ${EXTRACTION_DIR}
mkdir ${EXTRACTION_DIR}
tar -xzf ${DOWNLOAD_PATH} -C ${EXTRACTION_DIR}
rm ${DOWNLOAD_PATH}


sudo apt install -y libqt5webkit5
sudo dpkg -i ${EXTRACTION_DIR}/GlobalProtect_UI_deb-*.deb
rm -r ${EXTRACTION_DIR}

