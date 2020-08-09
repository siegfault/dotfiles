#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if ! is_installed vim ; then
  # From https://gist.github.com/mkhuda/2e4c6f602786753aaa09c324ff47086e
  sudo apt-get remove --purge vim vim-runtime vim-gnome vim-tiny vim-gui-common
  sudo rm -rf /usr/local/share/vim /usr/bin/vim

  sudo apt-get install gtk+-2.0 liblua5.1-dev luajit libluajit-5.1 python-dev python3-dev libperl-dev libncurses5-dev libatk1.0-dev libx11-dev libxpm-dev libxt-dev
  cd ~/code/installs
  git clone https://github.com/vim/vim
  cd vim
  git pull && git fetch

  cd src
  make distclean
  cd ..

  ./configure \
    --enable-multibyte \
    --enable-perlinterp=dynamic \
    --enable-rubyinterp=dynamic \
    --with-ruby-command=/home/$USER/.rbenv/shims/ruby \
    --enable-python3interp \
    --with-python3-command=python3.8
    --with-python3-config-dir=/usr/lib/python3.8/config-3.8-x86_64-linux-gnu/ \
    --enable-luainterp \
    --with-luajit \
    --enable-cscope \
    --enable-gui=auto \
    --with-features=huge \
    --with-x \
    --enable-fontset \
    --enable-largefile \
    --disable-netbeans \
    --with-compiledby="siggy" \
    --enable-fail-if-missing

  make && sudo make install
fi
