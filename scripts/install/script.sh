#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if [ ! -d /home/siggy/.oh-my-zsh ]; then
  echo "Installing: OhMyZsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Already installed: OhMyZsh"
fi

if ! is_installed yarn ; then
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

  sudo apt update && sudo apt install yarn
fi
