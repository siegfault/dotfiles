#!/usr/bin/env bash

if [ ! -d /home/siggy/.oh-my-zsh ]; then
  echo "Changing shell to zsh"
  chsh -s $(which zsh)
  echo "Installing: OhMyZsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Shell is already zsh"
  echo "Already installed: OhMyZsh"
fi

