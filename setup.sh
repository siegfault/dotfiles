#!/usr/bin/env bash

# TODO
# Better output

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
  sudo apt -qq install -y git
  git config --global user.email "michael@procore.com"
  git config --global user.name "Michael Siegfried"
  git clone https://github.com/siegfault/dotfiles.git $DOTFILES_PATH
fi
cd $DOTFILES_PATH

bash "scripts/desktop.sh"
bash "scripts/directories.sh"
bash "scripts/keys.sh"
bash "scripts/install.sh"
bash "scripts/settings.sh"

/usr/bin/rake install

bash "scripts/versions.sh"

if [ $INITIAL_SETUP -eq 0 ]; then
  git remote set-url origin git@github.com:siegfault/dotfiles.git
  rm ~/setup.sh
fi

sudo apt -qq upgrade -y
sudo apt -qq autoremove -y
