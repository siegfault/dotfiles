#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function apt_install {
  if ! is_installed "${2:-$1}" ; then
    sudo apt install -y $1
  fi
}

apt_install curl
apt_install fzf
apt_install git
apt_install htop
apt_install npm
apt_install rake
apt_install rbenv
apt_install ripgrep rg
apt_install ruby-build
apt_install tmux
apt_install tmuxinator
apt_install tree
apt_install zsh
