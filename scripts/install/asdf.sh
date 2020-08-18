#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function asdf_install {
  if ! is_installed $1 ; then
    asdf plugin add $1
    asdf install $1 $(asdf latest $1)
  fi
}

asdf_install elasticsearch
asdf_install kibana
asdf_install postgres
