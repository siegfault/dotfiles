#!/usr/bin/env bash

# TODO
# Better output
# Introduce a curl script to do full setup

set -e

sudo apt -qq update

bash "scripts/desktop.sh"
bash "scripts/directories.sh"
bash "scripts/keys.sh"
bash "scripts/install.sh"
bash "scripts/settings.sh"
bash "scripts/versions.sh"

(cd ~/code/dotfiles && rake install)

sudo apt -qq upgrade -y
sudo apt -qq autoremove -y
