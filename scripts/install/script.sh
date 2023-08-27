#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if ! is_installed npm ; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
fi

if ! is_installed zplug ; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
