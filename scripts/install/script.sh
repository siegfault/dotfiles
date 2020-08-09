#!/usr/bin/env bash

if [ ! -d /home/siggy/.oh-my-zsh ]; then
  echo "Installing: OhMyZsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Already installed: OhMyZsh"
fi

