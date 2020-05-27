export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s /home/siggy/.autojump/etc/profile.d/autojump.sh ]] && source /home/siggy/.autojump/etc/profile.d/autojump.sh

source $HOME/.aliases
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
source $HOME/.asdf_overrides
