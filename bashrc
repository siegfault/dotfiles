# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Single_line
  source $HOME/.bash-git-prompt/gitprompt.sh
fi

[ -z "$TMUX" ] && export TERM=xterm-256color
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/.asdf/completions/asdf.bash

source ~/.profile

function gclone () {
  read -p "Repo owner: " owner
  read -p "Repo name: " name
  read -p "Directory [~/code/${name}]: " directory

  clone_git_repo $owner $name ~/code/${directory:-$name}
}

function confirm_delete() {
  read -r -p "Are you sure you want to delete $1? [y/N] " response
  response=${response,,}    # tolower
  echo
  if [[ "$response" =~ ^(yes|y)$ ]]
  then
    true
  else
    false
  fi
}
