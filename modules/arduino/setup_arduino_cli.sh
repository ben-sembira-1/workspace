#!/bin/bash

set -euo pipefail

brew update
brew install arduino-cli

arduino-cli config init
arduino-cli core update-index
arduino-cli core install arduino:avr
arduino-cli lib install "AUnit@1.7.1"
