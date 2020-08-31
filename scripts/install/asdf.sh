#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

function asdf_install {
  asdf which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}"
    asdf plugin add $1 $2
    asdf install $1 $(asdf latest $1)
    asdf global $1 $(asdf latest $1)
  else
    echo "Already installed: ${1}"
  fi
}

asdf_install elasticsearch https://github.com/asdf-community/asdf-elasticsearch.git
asdf_install kibana        https://github.com/mikestephens/asdf-kibana.git
asdf_install postgres
