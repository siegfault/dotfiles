#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function apt_install {
  if ! is_installed "${2:-$1}" ; then
    sudo apt install -y $1
  fi
}

apt_install brave-browser
apt_install curl
apt_install dconf-cli dconf
apt_install fonts-powerline
apt_install fzf
apt_install gist
apt_install git
apt_install htop
apt_install kubectl
apt_install memcached
apt_install rake
apt_install rbenv
apt_install redis redis-cli
apt_install ripgrep rg
apt_install ruby-build
apt_install tmux
apt_install tmuxinator
apt_install tree
apt_install zsh

if $SHELL -ne "/bin/bash" ; then
  chsh -s /bin/zsh
fi
