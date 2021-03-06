#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function snap_install {
  if ! is_installed "${2:-$1}" ; then
    snap install $1
  fi
}

snap_install circleci
snap_install "slack --classic" slack
snap_install spotify
