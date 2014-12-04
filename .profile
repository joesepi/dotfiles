# Begin my stuff
# --------------


# my shortcuts
alias web="cd ~/_me_/studio/web/ && echo 'Welcome to the web studio of Standards and Deviations!' && echo '------------------------------------------------------'"
# https://github.com/hub
alias git=hub
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
alias netw="cd ~/code/be/be.net && echo 'Watch Out!!' && sh ~/mf/active/studio/web/dotfiles/watcher.sh . sbelsky@dev29.be.lan:/var/www/vhosts/network/sandbox/"
alias pro="cd ~/code/be/pro2-ui && echo 'go pro!'"
alias prow="cd ~/code/be/pro2-ui && echo 'Watch Out!!' && sh ~/mf/active/studio/web/dotfiles/watcher.sh ./dist/ sbelsky@dev29.be.lan:/var/www/vhosts/pro2-ui/sandbox/public/"

alias biv='bundle install --path .vendor'
alias bex='bundle exec'


# export PATH="/usr/local/bin:/usr/local/sbin:/Users/cranemes/.nvm/v0.10.28/lib/:$PATH"
export PATH="/Users/yosep/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin/:$PATH"

# Add rbenv, if we have/need it
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
