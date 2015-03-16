# Begin my stuff
# --------------


# my shortcuts
# alias web="cd ~/_me_/studio/web/ && echo 'Welcome to the web studio of Standards and Deviations!' && echo '------------------------------------------------------'"
# https://github.com/hub
alias git=hub

# git delete all branches safe to delete
# http://stackoverflow.com/a/18571517/1766637
alias gitdel="git branch --merged master | grep -v master | xargs git branch -d"

# https://github.com/DavidSouther/flipflops
alias ff=flipflops
# youtube-dl cli ftw
alias ytf="youtube-dl -F"
alias ytd="youtube-dl -t -f"
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
alias sshout="sh  ~/mf/active/studio/web/dotfiles/sshout.sh"
alias s='ssh -l joesepi -i ~/.ssh/id_rsa'
alias dev29="cd ~/bodega/dev29 && vagrant up && vagrant ssh -c 'sudo chef-client' && vagrant ssh"
alias devup="cd ~/bodega/dev29 && vagrant up"
alias b="cd ~/code/be/be.net && echo 'now get to work!'"
alias netw="cd ~/code/be/be.net && echo 'Watch Out!!' && sh ~/dotfiles/watcher.sh . sbelsky@dev29.be.lan:/var/www/vhosts/network/sandbox/"
alias pro="cd ~/code/be/pro2-ui && echo 'go pro!'"
alias prow="cd ~/code/be/pro2-ui && echo 'Watch Out!!' && sh ~/dotfiles/watcher.sh ./dist/ sbelsky@dev29.be.lan:/var/www/vhosts/pro2-ui/sandbox/public/"

alias biv='bundle install --path .vendor'
alias bex='bundle exec'

# boot2docker
if which boot2docker > /dev/null; then
  eval "$(boot2docker shellinit &> /dev/null)"

  # Set variables to connect to boot2docker machine
  export DOCKER_HOST=tcp://192.168.59.103:2376
  export DOCKER_CERT_PATH=/Users/yosep/.boot2docker/certs/boot2docker-vm
  export DOCKER_TLS_VERIFY=1
fi
docker-clean() { docker rm $(docker ps -a -q); docker rmi $(docker images | grep "^<none>" | awk '{print $3}'); }

docker-enter() {
  boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
  boot2docker ssh -t sudo /var/lib/boot2docker/docker-enter "$@"
}

export PATH="/Users/yosep/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

# Add rbenv, if we have/need it
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
