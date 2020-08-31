#!/usr/bin/env bash

source "scripts/install/is_installed.sh"

if [ ! -d /home/siggy/.oh-my-zsh ]; then
  echo "Installing: OhMyZsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Already installed: OhMyZsh"
fi

AWS_IAM_AUTH_LOC=/usr/bin/aws-iam-authenticator
if [ ! -f $AWS_IAM_AUTH_LOC ]; then
  echo "Installing: aws-iam-authenticator"
  sudo curl -o $AWS_IAM_AUTH_LOC https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/aws-iam-authenticator
  sudo chmod +x $AWS_IAM_AUTH_LOC
else
  echo "Already installed: aws-iam-authenticator"
fi
