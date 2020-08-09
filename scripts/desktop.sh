#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

INSTALL_DIRECTORY=~/code/installs
CHROME_DEB=google-chrome-stable_current_amd64.deb
CHROME_URL=https://dl.google.com/linux/direct
ZOOM_DEB=zoom_amd64.deb
ZOOM_URL=https://zoom.us/client/latest

function wget_install {
  if ! is_installed $1 ; then
    wget -P $INSTALL_DIRECTORY $2/$3
    sudo apt install $INSTALL_DIRECTORY/$3
  fi
}

wget_install google-chrome $CHROME_URL $CHROME_DEB
wget_install zoom $ZOOM_URL $ZOOM_DEB
