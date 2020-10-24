export ZSH="/home/siggy/.oh-my-zsh"
export ALIEN_SECTIONS_LEFT=(exit battery user path vcs_branch:async vcs_status:async vcs_dirty:async ssh prompt)
export ALIEN_THEME="red"

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/alien/alien.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ENABLE_CORRECTION="true"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="alien/alien"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm zsh_completion

# Add wisely, as too many plugins slow down shell startup.
plugins=()

unsetopt share_history

function gclone() {
  read "owner?Repo owner: "
  read "name?Repo name: "
  read "directory?Directory [~/code/${name}]: "

  clone_git_repo $owner $name ${directory:-~/code/$name}
}
