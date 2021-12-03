export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

[[ -s /home/siggy/.autojump/etc/profile.d/autojump.sh ]] && source /home/siggy/.autojump/etc/profile.d/autojump.sh

source $HOME/.aliases
source $HOME/.asdf/asdf.sh
source $HOME/.asdf_overrides
source $HOME/.functions.sh

set -o emacs
