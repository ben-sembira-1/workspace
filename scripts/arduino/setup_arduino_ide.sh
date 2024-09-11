#!/bin/bash

set -euo pipefail

SCRIPT_DIR=`dirname $0`

sudo add-apt-repository universe -y
sudo apt update
sudo apt install -y libfuse2

ARDUINO_IDE_INSTALLER="arduino-ide_2.3.2_Linux_64bit.AppImage"

pushd ~/Downloads
rm -f arduino-ide_*_Linux_64bit.AppImage
wget https://downloads.arduino.cc/arduino-ide/${ARDUINO_IDE_INSTALLER}
sudo chmod +x ${ARDUINO_IDE_INSTALLER}
sudo mv ${ARDUINO_IDE_INSTALLER} /usr/local/bin/arduino
echo "Close Arduino after it opens"
x-terminal-emulator -e arduino
popd

sudo cp ${SCRIPT_DIR}/AppArmor_profile /etc/apparmor.d/usr.local.bin.arduino
sudo service apparmor reload

sudo cp ${SCRIPT_DIR}/arduino-udev.rules /etc/udev/rules.d/99-arduino.rules

cp ${SCRIPT_DIR}/arduino-icon.png ~/Arduino/arduino-icon.png
sed s@HOME_DIR_PLACEHOLDER@$HOME@ ${SCRIPT_DIR}/arduino.desktop.TEMPLATE > ~/.local/share/applications/arduino.desktop
rm -f ~/Desktop/arduino.desktop
ln --symbolic ~/.local/share/applications/arduino.desktop ~/Desktop/arduino.desktop
gio set ~/.local/share/applications/arduino.desktop metadata::trusted true
sudo chmod +x ~/.local/share/applications/arduino.desktop
