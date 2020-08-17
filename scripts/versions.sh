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
