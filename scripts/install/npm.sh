#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if ! is_installed node ; then
  nvm install node
fi

function npm_install {
  if ! is_installed "${2:-$1}" ; then
    npm install -g $1
  fi
}

npm_install diff-so-fancy
npm_install tldr
