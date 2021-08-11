export ALIEN_SECTIONS_LEFT=(exit battery user path vcs_branch:async vcs_status:async vcs_dirty:async ssh prompt)
export ALIEN_THEME="red"

source $HOME/.profile
source $HOME/.zplug/init.zsh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"  # This loads nvm zsh_completion

zplug "eendroroy/alien", as:theme
zplug "junegunn/fzf", from:github, as:command, rename-to:fzf, hook-build:"./install --all"
zplug "junegunn/fzf", from:github, as:plugin, use:"shell/*.zsh"
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-syntax-highlighting', defer:2

zplug check --verbose || zplug install
zplug load

bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

function gclone() {
  read "owner?Repo owner: "
  read "name?Repo name: "
  read "directory?Directory [~/code/${name}]: "

  clone_git_repo $owner $name ${directory:-~/code/$name}
}

function confirm_delete() {
  if read -q "choice?Are you sure you want to delete $1? "; then
    echo
    true
  else
    echo
    false
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
