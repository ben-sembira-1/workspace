#!/bin/bash

set -euo pipefail

read -p "Enter you email:" GIT_EMAIL; echo
read -p "Enter you name:" GIT_NAME; echo

git config --global user.email ${GIT_EMAIL}
git config --global user.name ${GIT_NAME}
git config --global alias.st "status"
git config --global alias.plog "log --graph --oneline"
git config --global alias.wdiff "diff --color-words"
