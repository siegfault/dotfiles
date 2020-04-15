ZSH_THEME="agnoster"

export ZSH="/home/siggy/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export FZF_DEFAULT_COMMAND='rg --files'
export EDITOR='vim'

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(asdf autojump fzf nvm)

unsetopt share_history
