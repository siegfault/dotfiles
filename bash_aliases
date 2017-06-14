# generic
alias ll='ls -alF'
alias srsly='sudo'
alias boom='git reset --hard'

# directories
alias cdp='cd ~/code/procore/'
alias cddf='cd ~/code/dotfiles/'
alias cddd='cd ~/code/data_day/'
alias cde='cd ~/code/expiration/'

# git aliases
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gp='git pull'

# tmux
alias tattach='tmux attach-session -t'
alias tlist='tmux list-sessions'
alias mux='tmuxinator'
alias cssh='tmux-cssh'
alias cssh_example='echo "tmux-cssh \$(for i in \$(seq 1 8); do echo -n \"web\${i}.aws.bunker.production.procoretech.com \"; done)"'

# rails aliases
alias mig='bundle exec rake db:migrate'
alias tag='git tag | tail -6'
alias spec='RAILS_ENV=test bundle exec rspec'
alias setup='bundle exec rake db:drop && bundle exec rake db:setup && bundle exec rake db:migrate && bundle exec rake db:test:prepare'
alias branches="gb -r | grep 'origin/\(dev/\)\?md\?s[_/]' | grep '\(dev/\)\?md\?s[/_].*'"
alias kill_server='ps aux | grep -v grep | grep 0.0.0.0 | awk "{print \$2}" | xargs kill -9'
alias be='bundle exec'
alias structure='bundle exec rake db:structure:dump DB_STRUCTURE=db/structure.sql'

# rubocop
alias rc='bundle exec rubocop'
alias rcac='bundle exec rubocop --auto-correct'
alias rcagc='bundle exec rubocop --auto-gen-config'

# heroku
alias pheroku='git push heroku'
alias phm='git push heroku master'

# nginx
alias nstart='sudo /usr/local/nginx/sbin/nginx'
alias nstop='sudo /usr/local/nginx/sbin/nginx -s stop'
alias ntail='tail -f /usr/local/nginx/logs/access.log /usr/local/nginx/logs/error.log'

# procore
alias fix_git='rm -rf ~/code/procore.old/ && mv ~/code/procore/ ~/code/procore.old/ && git clone git@192.168.41.240:git/procore.git ~/code/procore/ && cd ~/code/procore/ && git remote set-url origin git@github.com:procore/procore.git && cp ~/code/procore.old/config/database.yml config/database.yml && git submodule update --init --recursive && cp ~/code/procore.old/.env .env && cp ~/code/procore.old/config/storage_profiles.yml config/storage_profiles.yml'
