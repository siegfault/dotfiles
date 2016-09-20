alias be='bundle exec'
alias structure='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'
alias fucking='sudo'
alias fuckit='git reset --hard'
alias fix_git='cd && rm -rf procore.old/ && mv procore/ procore.old/ && git clone git@192.168.33.240:git/procore.git procore/ && cd procore/ && git remote set-url origin git@github.com:procore/procore.git && cp ../procore.old/config/database.yml config/database.yml && git submodule update --init --recursive && cp ../procore.old/.env .env'

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
alias r='bundle exec rails'
alias rs='bundle exec rails s -b 0.0.0.0'
alias pu='puma -b tcp://0.0.0.0:3000'
alias rc='bundle exec rails c'
alias rv='ruby -v'
alias dbs='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'

# utility aliases
alias mig='bundle exec rake db:migrate'
alias tag='git tag | tail -6'
alias resque='QUEUE=* bundle exec rake resque:work'
alias resques='QUEUE=* bundle exec rake resque:workers'
alias spec='RAILS_ENV=test bundle exec rspec'
alias mailcatcher='mailcatcher --http-ip 192.168.239.129'
alias setup='rake db:drop && rake db:setup && rake db:migrate && rake db:test:prepare'
alias branches="gb -r | grep 'origin/\(dev/\)\?md\?s[_/]' | grep '\(dev/\)\?md\?s[/_].*'"
alias kill_server='ps aux | grep -v grep | grep 0.0.0.0 | awk "{print \$2}" | xargs kill -9'

# directories
alias cdp='cd ~/procore/'
alias cddf='cd ~/dotfiles/'
alias cddd='cd ~/data_day/'
alias cde='cd ~/expiration/'

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
