#/usr/bin/env bash

SSH_KEY=~/.ssh/id_rsa
if [ ! -f $SSH_KEY ]; then
  echo "Generating ssh key"
  ssh-keygen -t rsa -b 4096 -N "" -f $SSH_KEY -C "michaeldsiegfried@gmail.com"
  printf %.s= {1..100}
  echo
  cat $SSH_KEY.pub
  printf %.s= {1..100}
  echo
  read -p "Visit https://github.com/settings/keys to enter key"
else
  echo "SSH key already exists"
fi
