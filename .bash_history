ls
sudo apt-get install ndiswrapper-common ndiswrapper-utils-1.9
arch
cd ~/Desktop/Broadcom_bcm43xx_USB_32_64bit_v2/
sudo ndiswrapper-i bcmn43xx32.inf
sudo ndiswrapper -i bcmn43xx32.inf
ndiswrapper -l
sudo depmod -a
sudo modprobe ndiswrapper 
sudo apt-get install linux-headers-generic build-essential
sudo -i
sudo reboot
lsusb
cd ~/Desktop/
ll
cd RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
ll
sudo chown +x -r .
sudo chown -r +x .
sudo chown +x ./*
sudo chmod -r +x .
sudo chmod +x .
ll
ls
sudo ll
sudo ls -l
sudo chmod -x .
ll
ls -al
sudo ls -al
ll
cd
cd ~/Desktop/
cd R
cd 0001-RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
ll
cd RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
ll
sudo chmod +x install.sh 
ll
./install.sh 
sudo bash install.sh 
sudo reboot
lsusb
lsusb | |grep Net
lsusb | grep Net
lsusb | grep bel
cd ~/Desktop/0001-RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/RTL8188C_8192C_USB_linux_v4.0.2_9000.20130911/
./install.sh 
sudo apt-get install build-essential -y
sudo ./install.sh 
system
version
lsb_release -a
nm-tool
lshw -C network
sudo ~~
sudo lshw -C network
sudo lspci -nn
lspci -nn | grep 0280
lsusb
cd
sudo lsusb -v
Terminal
lsmod | grep ath
lsmod
sudo iwconfig
sudo apt-get install wireless-tools
lspci | grep Network
lspci -vvnn
lspci -vvnn | |grep work
lspci -vvnn | grep work
lspci -vvnn
sudo apt-get install ndisgtk
cd ~/Desktop/
ll
cd rt
cd rtl8712_8188_8191_8192SU_usb_linux_v2.6.6.0.20120405/
sudo apt-get install build-essential -y
cd
cd Downloads/rtl8712_81
~/cd Downloads/r
cd ~/Downloads/rtl8712_8188_8191_8192SU_usb_linux_v2.6.6.0.20120405
cd ~/Downloads/
ll
cd ~/Desktop/rtl8712_8188_8191_8192SU_usb_linux_v2.6.6.0.20120405
sudo ./install.sh
ll
chmod +x install.sh 
ll
sudo ./install.sh
lspci
lspci | grep -E "Wireless"
lspci
lspci | grep Network
lshw -C network
sudo lshw -C network
lspci | grep Network
sudo lshw -C network
sudo lshw -businfo
vi
sudo lshw -businfo | grep network
siggy@siggy-MS-7916:~$ sudo lshw -businfo
Bus info          Device      Class          Description
========================================================
ll
sudo lshw -businfo | grep network
sudo lshw -businfo
sudo lshw -businfo | grep 'Description|network'
sudo lshw -businfo | grep '(Description)|(network)'
ag
sudo apt-get install silversearcher-ag
sudo lshw -businfo | ag '(Description)|(network)'
ping google.com 
ifconfig
lspci | |grep VGA
lspci | grep VGA
find /dev -groupo video
find /dev -group video
glxinfo | ag vendor
sudo apt-get install mesa-utils
glxinfo | ag vendor
ping google.com
sudo drivers autoinstall
use xrandr --auto
lspci | grep VGA
ping google.com
rm -r ~/.config
rm -r ~/.copmiz
rm -r ~/.compiz
sudo restart lightdm
rm -r ~/.config
rm -r ~/.compiz
rm -rf ~/.compiz
sudo reboot
sudo apt-get update
sudo apt-get install --reinstall ubuntu-desktop
ping google.com
sudo apt-get install --reinstall ubuntu-desktop
sudo apt-get install unity
sudo apt-get remove --purge nvidia*
sydo shutdown -r now
sudo shutdown -r now
bash < <(curl -sL https://raw.github.com/railsgirls/installation-scripts/master/rails-install-ubuntu.sh)
sudo apt-get install curl
bash < <(curl -sL https://raw.github.com/railsgirls/installation-scripts/master/rails-install-ubuntu.sh)
vim
sudo apt-get install vim
subl
ruby
exit
ruby
sudo reboot
ruby
bash < <(curl -sL https://raw.github.com/railsgirls/installation-scripts/master/rails-install-ubuntu.sh)
rails
ll
rails new railsgirls
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.2.1
rbenv global 2.2.1
ruby -v
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
git config --global color.ui true
git config --global user.name "michael@procore.com"
git config --global user.name "Michael Siegfried"
git config --global user.email 
git config --global user.email "michael@procore.com"
git config --global user.email 
ssh-keygen -t rsa -C michael#@procore.com"
ssh-keygen -t rsa -C "michael@procore.com"
cat ~/.ssh/id_rsa.pub 
ssh -T git@github.com
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
gem install rails -v 4.2.0
rbenv rehash
rails -v
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev
sudo -u postgres createuser expiration -s
sudo -u postgres siggy expiration -s
sudo -u postgres createuser siggy -s
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.3 libpq-dev
sudo -u postgres createuser siggy -s
sudo -u postgres psql
rails new expiration
ll
rm -rf expiration/
mkdir Code
cd Code/
rails new expiration -d postgresql
rake db:create
bundle exec rake db:create
ll
cd expiration/
rake db:create
rails s
subl
cd
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
git init
git deinit
git --help
cd Code/expiration/
git init
git add .
git commit -m 'First commit'
git remote add origin https://github.com/siggymcfried/expiration.git
git push -u origin master
heroku login
heroku create
git push heroku master
heroku open
heroku ps:scale web=1
heroku open
rails g model FoodItem
rails g controller FoodItem
gs
git status
rake db:migrate
rake db:migrate:down VERSION=heroku ps:scale web=1
rake db:migrate:down VERSION=20150404090106
gs
git status
git reset --hard
rails g controller FoodItems
rails g model FoodItems
rake db:migrate
git status
rm def index
app/assets/javascripts/food_item.coffee app/assets/stylesheets/food_item.scss app/helpers/food_item_helper.rb test/controllers/food_item_controller_test.rb
rm app/assets/javascripts/food_item.coffee app/assets/stylesheets/food_item.scss app/helpers/food_item_helper.rb test/controllers/food_item_controller_test.rb
git status
git status -A
git status -v
rake db:migrate:redo
gs
git status
git diff
g add .
git add .
git diff
git commit -m "Adding new and index"
g po
git push origin HEAD
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000'
git push origin HEAD
git branch
grb create initial_branch
git checkout -b initial_branch
gd
git diff
git commit -am "Creating food works! "
git push origin HEAD
git status
subl
rails g model User
mig
bundle exec rake db:migrate
gd
git diff
git status
g add .
git add .
git commit -m 'Adding users model'
git push origin HEAD
git config credential.helper store
git push origin HEAD
git diff
cd ..
g clone https://github.com/siggymcfried/configs.git
git clone https://github.com/siggymcfried/configs.git
ll
mv configs/* .
mv configs .
mv configs/** .
mv configs/ .
cd confdigs
cd configs
ll
mv * ..
ll *
ls -al
ll
;s
ls
mv .*
mv .* ..
ll ..
ll
fuckit
git reset --hard
cd ..
rm -rf .git
ll
exit
cd Code/expiration/
rails s
ll
gs
alias
cd Code/expiration/
ll
gs
cd ..
ll
cat .bashrc 
cd expiration/
cd ..
ll
cat .profile 
cat .bash-profile 
rm .profile 
exit
cd Code/
ll
alias
mv .bash-profile .profile
exit
cd Code
alias
source .bashrc
mv .profile .bash-profile
source .bashrc
ll
source .bashrc
mv .* ..
ll
cd ..
ll
git status
cd Code/
ll
cd expiration/
gs
exit
cd Code/expiration/
ll
alias
gs
sudo apt-get install spotify-client
vim /etc/apt/sources.list
sudo vim /etc/apt/sources.list
sudo apt-get install spotify-client
sudo apt-get install update
sudo apt-get update
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59
sudo apt-get update
sudo apt-get install spotify-client
sudo apt-get install spotify-client --fix-missing
ping google.com
sudo apt-get install spotify-client
spotify
spotify &
spotify
ps aux | |grep spot
ps aux | grep spot
kill -9 sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 94558F59
kill -9 13646
spotify
ps aux | grep spot
kill -9 13848
spotify
git push heroku master
heroku open
heroku logs
heroku logs --tail
heroku run rake db:migrate
gs
heroku run rake db:migrate
gd
g co app/assets/stylesheets/application.css
gs
gd
gs
g rm app/assets/stylesheets/application.scss
gs
rm app/assets/stylesheets/application.scss
gs
gd
g cm "Adding user header"
g po
git push heroku master
git push heroku initial_branch
heroku open
git push heroku initial_branch:master
heroku run rake db:migrate
rs
r s
rails s
sudo apt-get install bundler
rs
bundle
ruby -v
bundle
rmv
rvm
rbenv
ruby -v
rails -v
cd
ruby -v
rbenv
rvm
cd Code/expiration/
rails server
rbenv
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
rbenv install 2.2.1
ruby -v
rails
cd Code/expiration/
rs
git status
gd
gs
g add app
gs
gd
fuckit
gd
g cm "Explicit ruby version"
g po
gs
g mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss
gs
g cm "Moving application css to scss"
g po
rails g controller Accounts
ag @user
gd
gs
g add .
g rm test/controllers/accounts_controller_test.rb
gs
g cm "Accounts controller and redirection"
g po
cd Code/expiration/
subl
rails
rails s
ping google.com
bundle
rake db:migrate:redo
bundle
rake db:migrate:redo
psql
rc
rails g controller sessions login
rake db:migrate:redo
rails g migration AddUserIdToFoodItem user_id:integer
mig
be rails c
mig
ag FoodItem
ag FoodItem app
gs
gadd .
g add .
gs
g cm "Big commit
User auth.
Header setup
Food coding"
g po
git push heroku initial_branch:master
heroku run rake db:migrate
heroku run rails c
heroku run rake db:migrate
heroku log
heroku logs
gd
g cm "Adding heroku gem"
g po
git push heroku initial_branch:master
bundle install
gs
g cm "gemfile.lock"
g po
git push heroku initial_branch:master
heroku logs
gd
g cm "Always auth user except on logout"
g po
git push heroku initial_branch:master
gd
g cm "Actually never auth in session controller"
g po
git push heroku initial_branch:master
gd
g cm "Moving save_login_state logic and adding links toeach other on login/signup"
g po
git push heroku initial_branch:master
gfd
gd
g cm "Removing unneeded flash stuff" 
g po
git push heroku master
gp
g co master
gp
git push heroku master
heroku logs
heroku run rake db:migrate:redo STEP=2
heroku logs
gd
gs
gd
fuckit
git push heroku master
heroku run rails c
heroku run rake db:migrate:redo STEP=4
heroku restart
heroku run rails c
gd
g add app/controllers/users_controller.rb
g commit -m "Setting session on user create"
g po
gs
gd
g co app/views/sessions/login.html.erb
gs
gd
g add app/views/food_items/new.html.erb
g commit -m "Using date field for expiration date picker"
g po
gs
gd
GD
gd
g cm "Adding some todos"
g po
git push heroku master
cd Code/
cd expiration/
ls
gp
gd
fuckit
gp
rs
rails g migration AddFinishedEatingOnAndThrownOutOnToFoodItems finished_eating_on:date thrown_out_on:date
mig
rc
gd
grb create throw_out_and_finish_eating_item
git checkout -b  throw_out_and_finish_eating_item
gd
gs
g add db/migrate/
g cm "Add finish_eating and throw_out"
g po
gs
g co master
git push heroku master
heroku run rake db:migrate
gp
git push heroku master
heroku run rake db:migrate
gd
g cm "Add to readme"
g po
gd
cd Code/
g clone http://github.com/emilybache/GildedRose-Refactoring-Kata.git
ssh procore@db2.production.procoretech.com
ls
cd GildedRose-Refactoring-Kata/
ls
cd ruby/
ls
cat gilded_rose_spec.rb 
ls
spec gilded_rose_spec.rb 
rspec gilded_rose_spec.rb 
sudo apt-get install ruby-rspec-core
rspec gilded_rose_spec.rb 
sudo apt-get uninstall ruby-rspec-core
sudo apt-get remove ruby-rspec-core
rake rspec
gem install rspec
gem install rspec-given
rake rspec
rake rspec .
ls
cd ..
ls
cd ruby/
ls
cat gilded_rose_tests.rb 
rake
cd ..
rake rspec .
cd ruby/
sudo apt-get install rake
rake rspec .
ls
rake -T
ruby -I"lib:test" gilded_rose_spec.rb 
ruby -I"lib:test" gilded_rose_tests.rb 
cat ../GildedRoseRequirements.txt 
cd Code/expiration/
rs
rails g migration UpdateFoodItemEatenAndThrownOutOn
ag
ag finished_eating_on
ag thrown_out_on
mig
gd
g add app/models/food_item.rb
g add app/views/food_items/index.html
gd
g add db/schema.rb
gs
g add db/migrate/20150509163622_update_food_item_eaten_and_thrown_out_on.rb
gs
g commit -m "Renamed eaten on and thrown out on and added scopes."
g po
gs
gd
g add -A .
gs
g cm "Adding filtering models"
g po
gs
g add app/models/trashed_food_items_gatherer.rb
gs
gd
g cm "Handle filters in the view and rename ExpiredFoodItemsGatherer to TrashedFoodItemsGatherer."
gd
gs
gd
g co config/routes.rb 
gs
gd
g cm "Styling filters"
gd
g cm "Removing commented routes"
gd
gs
g add app/views/food_items/edit.html.erb
gs
g cm "Adding ability to edit food items"
g po
gp
gd
g cm "Add secondary ordering and limiting"
g po
gd
g cm "Adding counts to filters"
g po
heroku run rake db:migrate
git push heroku master
heroku run rake db:migrate
heroku run rails c
gd
gs
g add app/models/icon.rb 
g cm "Addding font awesome icons"
g po
git push heroku master
gd
g cm "Don't allow other button if thrown out or eaten"
g po
heroku push master
git push heroku master
git co -b bootstrap
gs
gd
g cm "Adding bootstrap for main table"
g po
g co master
gp
git push heroku master
gd
cd Code/expiration/
rs
gs
gd
gd | ag default
gd
g cm "Filter styling"
g po
gd
fuckit
heroku push master
git heroku push master
git push heroku master
gd
g cm "Need secure jquery link"
g po
g push heroku master
gd
g cm "Making add button more clear"
g po
gp
g po
git push heroku master
gd
rs
cd Code/expiration/
rs
rc
gd
gs
git checkout -b mds/styling/nav-bar
gd
g cm "Restyle of navbar"
g po
gd
g cm "Don't need nowrap when it doesn't wrap already"
g po
g co master
gp
git heroku push master
g push heroku master
gd
ewxit
exit
ux ls
tmux ls
tmux new -s server
exit
tmux
sudo apt-get install tmux
ls
cd Code/
ls
cat configs/
ll confdigs
ll configs
find / -name .bashrc
sudo find / -name .bashrc
cd
ll
vi tmux.conf
tmux new -s foo
exit
ll
mv tmux.conf .tmux.conf
exsit
exit
tmux
exit
cat .tmux.conf 
tmux
tmux list-sessions
tmux attach -t 0
vimtutor
ll
mv spec/gilded_rose.rb .
ll
ll spec
ll
find / -name gilded_rose_spec.rb
sudo find / -name gilded_rose_spec.rb
exit
cat .vimrc
cat ../.vimrc
cat ../../.vimrc
cat ../../../.vimrc
vi ../../../.vimrc
vi ../../../.tmux.conf 
exit
cd Code/GildedRose-Refactoring-Kata/
cd ruby/
ll
vim gilded_rose.rb 
tmux new -s gilded_rose
exit
vim gilded_rose_spec.rb
exit
cat gilded_rose.rb 
ll
vim ../../../.vimrc
cat ../../../../.vimrc
cat ../../.vimrc
vim ../../.vimrc
cat ../../.tmux.conf 
cat ../../.vim\.conf 
cat ../../.vimrc 
cat ../../.tmux.conf 
cat ../../.vimrc 
source ../../.vimrc 
vim ../../.vimrc
source ../../.vimrc 
vim ../../.vimrc
source ../../.vimrc 
cat ../../.vimrc 
exit
rspec gilded_rose_spec.rb
vim ../../.tmux.conf 
vim ../../.vimrc 
sudo apt-get install build-essential cmake
sudo apt-get install python-dev
cd ~/.vim/bundle/YouCompleteMe
vim --version
exit
vim gilded_rose
vim gilded_rose.rb 
exit
cd Code/GildedRose-Refactoring-Kata/
cd ruby
cd ..
mv ruby ../gilded_rose
ls
cd ..
ll
rm -rf GildedRose-Refactoring-Kata/
ll
cd gilded_rose/
ll
tmux new -s gilded_rose
exit
vim gilded_rose.rb 
cd ~/.vim/bundle/YouCompleteMe
vim
unix2dos
unix2dos ~/.vim/bundle/YouCompleteMe/
unix2dos ~/.vim/bundle/YouCompleteMe/*
unix2dos ~/.vim/bundle/YouCompleteMe/**
unix2dos ~/.vim/bundle/YouCompleteMe/**/*
vim
unix2dos ~/.vim/bundle/YouCompleteMe/plugin/youcompleteme.vim 
vim
dos2unix ~/.vim/bundle/YouCompleteMe/**/*
vim
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
ll
./install.sh 
vim
cd ..
ll
rm -rf YouCompleteMe/
vim
dos2unix YouCompleteMe/**/*
dos2unix YouCompleteMe/**/**/*
vim
cd YouCompleteMe/
./install.sh --clang-compiler
cat install.sh 
./install
./install.sh 
cat install.sh 
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$SCRIPT_DIR
build_file=$SCRIPT_DIR/third_party/ycmd/build.py
echo $build_file
ll /home/siggy/.vim/bundle/YouCompleteMe/third_party/ycmd
./install.sh --clang-completer
vim
./install.sh --clang-completer --system-libclang
saudo apt-get instasll python-nose
sudo apt-get instasll python-nose
sudo apt-get install python-nose
sudo apt-get install python-mock
./install.sh --clang-completer
sudo apt-get uninstall python-mock
sudo apt-get remove python-mock
sudo apt-get remove python-nose
./install.sh --clang-completer
cat ./install.sh 
set -er
set -e
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rspec gilded_rose_spec.rb
cd
cd Code/gilded_rose/
rspec gilded_rose_spec.rb
ps aux
ps aux | vim
ps aux | grep vim
kill 15389
kill -9 15389
exit
cd ~/.vim/bundle/YouCompleteMe/
./install --clang-completer
cat install.sh 
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
build_file=$SCRIPT_DIR/third_party/ycmd/build.py
if [[ ! -f "$build_file" ]]; then   echo "File $build_file doesn't exist; you probably forgot to run:";   printf "\n\tgit submodule update --init --recursive\n\n";   exit 1; fi
command_exists() {   command -v "$1" >/dev/null 2>&1 ; }
PYTHON_BINARY=python
if command_exists python2; then   PYTHON_BINARY=python2; fi
echo $PYTHON_BINARY
$PYTHON_BINARY "$build_file" "$@"
cat install.sh 
rm -f python/*ycm_core.* &> /dev/null
rm -f python/*ycm_client_support.* &> /dev/null
rm -f python/*clang*.* &> /dev/null
./install.sh 
install.sh 
./install.sh 
ll
vim
cd
cd Code/gilded_rose/
vim gilded_rose.rb 
exit
vim gilded_rose_spec.rb 
exit
cd Code/gilded_rose/
ll
tmux new -s gilded_rose
exit
cd Code/gilded_rose/
ll
tmux new -s gilded_rose
tmux l
vim
cd ../expiration/
vim
vim
cp ../expiration/config/database.yml config/database.yml 
cat config/database.yml 
vim
cp ../expiration/config/routes.rb config/routes
vim
mv config/routes config/routes.rb
ll
gs
vim
cp ../expiration/app/controllers/sessions_controller.rb app/controllers/sessions_controller.rb
vim
cp ../expiration/app/controllers/application_controller.rb app/controllers
gs
vim
ll
mv actions_controller.rb app/controllers/
vim
mkdir app/views/activities
vim
git clone git@heroku.com:serene-hollows-4719.git
cd Code/expiration/
heroku apps:rename expiration
cd ..
git clone https://github.com/siggymcfried/data_day.git
gs
ll
cd data_day/
ll
rails new data_day
ll
mv data_day/* .
ll
ll data_day/
mv data_day/.gitignore .
ll data_day/
rm data_day/
rm -rf data_day/
ll
g cm "Initial push"
g log
g reset --soft HEAD~1
g reset HEAD~1
gs
g add -A .
gs
g cm "Initial commit"
g po
vim Gemfile
gs
gd
bundle
gs
gd
g cm "Adding postgres"
g po
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600000'
g po
tmux new -s data_day
cd Code/
cd data_day/
gs
tmux new -s data_day
cd Code/data_day/
heroku run rails c
cd ../expiration/
heroku run rails c
ping google.com
lsb_release -a
sudo apt-get install gnome-tweak-tool -y && gnome-tweak-tool
exirt
exit
cd ~/.vim/bundle/
git clone git://github.com/tpope/vim-rails.git
git clone git://github.com/tpope/vim-bundler.git
cd
cd Code/data_day/
tmux new -s data_day
exit
tmux new -s data_day
exit
exit
exit
vim
cd Code/data_day/
tmux new -s data_day
vi ../../.tmux.conf 
exit
mux new -s data_day
tmux new -s data_day
vi .tmux.conf 
exit
xy
