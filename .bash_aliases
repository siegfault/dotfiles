alias be='bundle exec'
alias structure='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'
alias fucking='sudo'
alias fuckit='git reset --hard'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git aliases
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gcm='git commit -am'
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
alias rc='bundle exec rails c'
alias rv='ruby -v'
alias dbs='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'

#utility aliases
alias mig='bundle exec rake db:migrate'
alias tag='git tag | tail -6'
alias resque='QUEUE=* bundle exec rake resque:work'
alias resques='QUEUE=* bundle exec rake resque:workers'
alias spec='RAILS_ENV=test bundle exec rspec'
alias mailcatcher='mailcatcher --http-ip 192.168.239.128'
alias setup='rake db:drop && rake db:create && rake db:migrate && rake db:schema:dump && rake db:test:prepare'
