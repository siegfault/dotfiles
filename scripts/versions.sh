#!/usr/bin/env bash

PLUGIN_DIR="$(rbenv root)"/plugins
RUBY_BUILD=$PLUGIN_DIR/ruby-build
if [ ! -d $RUBY_BUILD ]; then
  echo "Installing: ruby-build"
  mkdir -p $PLUGIN_DIR
  git clone git@github.com:rbenv/ruby-build.git $RUBY_BUILD
  read -p "Select ruby version: " ruby_version
  rbenv install $ruby_version
  rbenv global $ruby_version
else
  echo "Already installed: ruby-build"
fi

asdf list postgres &> /dev/null
if [ $? -ne 0 ]; then
  echo "Installing: postgres"
  read -p "Select pg version: " pg_version
  asdf plugin add postgres
  asdf install postgres $pg_version
  asdf global postgres $pg_version
else
  echo "Already installed: postgres"
fi
