#!/usr/bin/env bash

# TODO
# Better output
# Introduce a curl script to do full setup

set -e

DOTFILES_PATH=~/code/dotfiles
if [ -d $DOTFILES_PATH ]; then
  INITIAL_SETUP=1
else
  INITIAL_SETUP=0
fi

sudo apt -qq update

if [ $INITIAL_SETUP -eq 0 ]; then
  mkdir -p ~/code
  git clone https://github.com/siegfault/dotfiles.git $DOTFILES_PATH
fi
cd $DOTFILES_PATH

bash "scripts/desktop.sh"
bash "scripts/directories.sh"
bash "scripts/keys.sh"
bash "scripts/install.sh"
bash "scripts/settings.sh"
bash "scripts/versions.sh"

rake install

if [ $INITIAL_SETUP -eq 0 ]; then
  git remote set-url origin git@github.com/siegfault/dotfiles.git
fi

sudo apt -qq upgrade -y
sudo apt -qq autoremove -y
