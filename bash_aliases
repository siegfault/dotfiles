alias be='bundle exec'
alias structure='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'
alias fucking='sudo'
alias fuckit='git reset --hard'
alias fix_git='rm -rf ~/code/procore.old/ && mv ~/code/procore/ ~/code/procore.old/ && git clone git@192.168.41.240:git/procore.git ~/code/procore/ && cd ~/code/procore/ && git remote set-url origin git@github.com:procore/procore.git && cp ~/code/procore.old/config/database.yml config/database.yml && git submodule update --init --recursive && cp ~/code/procore.old/.env .env && cp ~/code/procore.old/config/storage_profiles.yml config/storage_profiles.yml'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git aliases
alias g='git'
alias gap='git add -p'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gcm="git commit"
alias gca="git commit -a"
alias gfo='git fetch origin'
alias gpo='git push origin HEAD'
alias gp='git pull'
alias gss='git stash save'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsd='git stash show -p'

# rails aliases
alias dbs='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'

# utility aliases
alias mig='bundle exec rake db:migrate'
alias tag='git tag | tail -6'
alias spec='RAILS_ENV=test bundle exec rspec'
alias setup='rake db:drop && rake db:setup && rake db:migrate && rake db:test:prepare'
alias branches="gb -r | grep 'origin/\(dev/\)\?md\?s[_/]' | grep '\(dev/\)\?md\?s[/_].*'"
alias kill_server='ps aux | grep -v grep | grep 0.0.0.0 | awk "{print \$2}" | xargs kill -9'

# directories
alias cdp='cd ~/code/procore/'
alias cddf='cd ~/code/dotfiles/'
alias cddd='cd ~/code/data_day/'
alias cde='cd ~/code/expiration/'

# heroku
alias pheroku='git push heroku'
alias phm='git push heroku master'

# nginx
alias nstart='sudo /usr/local/nginx/sbin/nginx'
alias nstop='sudo /usr/local/nginx/sbin/nginx -s stop'
alias ntail='tail -f /usr/local/nginx/logs/access.log /usr/local/nginx/logs/error.log'

# tmux
alias tattach='tmux attach-session -t'
alias tlist='tmux list-sessions'
alias mux='tmuxinator'

# vim
alias vimpi='vim +PluginInstall +qall'
