#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

TMUX_FZF=/usr/local/bin/tmuxinator-fzf-start.sh
if ! is_installed tmuxinator-fzf-start.sh ; then
  cd /usr/local/bin
  sudo curl -O https://raw.githubusercontent.com/camspiers/tmuxinator-fzf-start/master/tmuxinator-fzf-start.sh
  sudo chown siggy:siggy $TMUX_FZF
  sudo chmod +x $TMUX_FZF
  cd -
fi
