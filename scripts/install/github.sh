#!/usr/bin/env bash

function clone {
  if [ ! -d $3 ]; then
    echo "Cloning: ${2}/${1}"
    git clone git@github.com:$2/$1.git $3 ${@:4}
  else
    echo "Already cloned: ${2}/${1}"
  fi
}

clone asdf            asdf-vm      ~/.asdf;             (cd  ~/.asdf; git checkout "$(git describe --abbrev=0 --tags)" &> /dev/null)
clone bash-git-prompt magicmonty   ~/.bash-git-prompt   --depth=1
clone alien           eendroroy    ~/alien;             (cd ~/alien; git submodule update --init --recursive)
clone tpm             tmux-plugins ~/.tmux/plugins/tpm; tmux source ~/.tmux.conf
