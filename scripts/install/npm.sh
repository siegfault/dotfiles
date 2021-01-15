#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function npm_install {
  if ! is_installed "${2:-$1}" ; then
    npm install -g $1
  fi
}

npm_install diff-so-fancy
npm_install tldr
