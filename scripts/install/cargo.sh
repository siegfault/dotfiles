#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if ! is_installed cargo ; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh --profile default -qy
fi

function cargo_install {
  if ! is_installed "${2:-$1}" ; then
    cargo install $1
  fi
}

cargo_install bat
cargo_install exa
