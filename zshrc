ZSH_THEME="agnoster"

export ZSH="/home/siggy/.oh-my-zsh"

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm zsh_completion

# Add wisely, as too many plugins slow down shell startup.
plugins=()

unsetopt share_history
