# Begin my stuff
# --------------

# my shortcuts
# alias web="cd ~/_me_/studio/web/ && echo 'Welcome to the web studio of Standards and Deviations!' && echo '------------------------------------------------------'"
# https://github.com/hub
alias git=hub

alias gfi="git update-index --assume-unchanged"

# git delete all branches safe to delete
# http://stackoverflow.com/a/18571517/1766637
alias gitdel="git branch --merged master | grep -v master | xargs git branch -d"

# https://github.com/DavidSouther/flipflops
alias ff=flipflops

# youtube-dl cli ftw
alias ytf="youtube-dl -F"
alias ytd="youtube-dl -t -f"

alias me="cd ~/code/me && ls -la && echo '~~~~~~~~' && echo 'fuck off, lahey!'"

# Outlook keeps crashing
alias outlook="defaults delete com.microsoft.Outlook && killall cfprefsd && open -a Microsoft\ Outlook"

# UTILITIES
alias psef="ps -ef | grep"

function wallpaper() {
  if [ -z "$1" ]
  then
    echo 'Setting wallpaper to default';
    image='/Users/yosep/mf/active/studio/hardware/desktop/DefaultDesktop.jpg'
  else
    echo 'Setting wallpaper to ' $1;
    image=`echo $(cd $(dirname $1); pwd)/$(basename $1)`
  fi
  sudo rm ~/Library/Application\ Support/Dock/desktoppicture.db
  cd /System/Library/CoreServices
  sudo rm -f DefaultDesktop.jpg
  sudo ln -sf $image DefaultDesktop.jpg
  killall Dock
  cd -
}

#!/usr/bin/env python
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Behance
# -------
# alias sshout="sh  ~/mf/active/studio/web/dotfiles/sshout.sh"
alias s='ssh -l joesepi -i ~/.ssh/id_rsa'
alias biv='bundle install --path .vendor'
alias bex='bundle exec'
alias flo='flotilla'
alias doco='docker-compose'

# docker-machine
function dm {
  if [[ "$1" = "up" ]]; then
    docker-machine start dev

  elif [[ "$1" = "down" ]]; then
    docker-machine stop dev

  else
    docker-machine $*

  fi
}

# Network
alias b="cd ~/code/be/be.net && echo 'now get to work!'"
alias netw="cd ~/code/be/be.net && echo 'Watch Out!!' && sh ~/dotfiles/watcher.sh . sbelsky@dev29.be.lan:/var/www/vhosts/network/sandbox/"
# Pro
alias pro="cd ~/code/behance/pro2-ui && echo 'go pro!'"

function bodega {
  cd ~/bodega/dev

  if [[ "$1" = "up" ]] vagrant up

  if [[ "$1" = "down" ]] vagrant halt

  if [[ "$1" = "ssh" ]] vagrant ssh

  if [[ "$1" = "status" ]] vagrant status

  if [[ "$1" = "restart" ]] vagrant reload

  cd -
}

docker-enter() {
  boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
  boot2docker ssh -t sudo /var/lib/boot2docker/docker-enter "$@"
}

# docker-machine
if which docker-machine > /dev/null; then
  export DOCKER_TLS_VERIFY="1"
  export DOCKER_HOST="tcp://192.168.70.128:2376"
  export DOCKER_CERT_PATH="/Users/yosep/.docker/machine/machines/dev"
  export DOCKER_MACHINE_NAME="dev"
fi

docker-clean() { docker rm $(docker ps -a -q); docker rmi $(docker images | grep "^<none>" | awk '{print $3}'); }

export PATH="/Users/yosep/bin:/Users/yosep/.node/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

# Add rbenv, if we have/need it
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# from brew's nvm install:
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR="$(brew --prefix nvm)"; [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export PATH=$PATH:/usr/local/Cellar/nvm/0.25.4/versions/node/v0.12.2/bin

# http://docs.basho.com/riak/latest/ops/tuning/open-files-limit/
ulimit -n 65536
ulimit -u 2048
