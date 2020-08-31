#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function add_package_repository {
  if ! is_installed $1 ; then
    curl -sS $2 | sudo apt-key add -
    echo $3 | sudo tee /etc/apt/sources.list.d/$4
  fi
}

add_package_repository yarn    https://dl.yarnpkg.com/debian/pubkey.gpg              "deb https://dl.yarnpkg.com/debian/ stable main"        yarn.list
add_package_repository kubectl https://packages.cloud.google.com/apt/doc/apt-key.gpg "deb https://apt.kubernetes.io/ kubernetes-xenial main" kubernetes.list
