#!/bin/bash

set -euo pipefail

SCRIPT_DIR=`dirname $0`
bash ${SCRIPT_DIR}/setup_arduino_cli.sh
bash ${SCRIPT_DIR}/setup_arduino_ide.sh
