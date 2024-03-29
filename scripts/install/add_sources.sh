#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function add_package_repository {
  if ! is_installed $1 ; then
    curl -sS $2 | sudo apt-key add -
    echo $3 | sudo tee /etc/apt/sources.list.d/$4
  fi
}

add_package_repository yarn https://dl.yarnpkg.com/debian/pubkey.gpg "deb https://dl.yarnpkg.com/debian/ stable main" yarn.list

if ! is_installed brave-browser; then
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
fi
