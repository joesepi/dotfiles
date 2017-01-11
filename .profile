# Begin my stuff
# --------------

alias code="clear && cd ~/code && echo '******************************** \n get to work \n\n********************************' && ls -la"

# https://github.com/hub
alias git=hub
alias gfi="git update-index --assume-unchanged"

# git delete all branches safe to delete
# http://stackoverflow.com/a/18571517/1766637
alias gitdel="git branch --merged master | grep -v master | xargs git branch -d"

alias bex="bundle exec"

# youtube-dl cli ftw
alias ytf="youtube-dl -F"
alias ytd="youtube-dl -t -f"

# UTILITIES
alias psef="ps -ef | grep"
alias srcit="source ~/.profile"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# DOCKER
alias doco="docker-compose"
alias docorm="docker rm -fv $(docker ps -aq)"
alias docormi="docker rmi $(docker images -q)"

#!/usr/bin/env python
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

export PATH="/Users/joesepi/.gem/bin:/usr/local/opt/ccache/libexec:/Users/sepi/bin:/Users/sepi/.nvm:/usr/local/bin:/usr/local/sbin:$PATH"

export PATH="/Users/sepi/.rbenv/shims:${PATH}"
export RBENV_SHELL=zsh

# Add rbenv, if we have/need it
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

# nvm
# . ~/.nvm/nvm.sh
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
