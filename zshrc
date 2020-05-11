ZSH_THEME="agnoster"

export ZSH="/home/siggy/.oh-my-zsh"

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf)

unsetopt share_history
