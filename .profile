# OH MY ZSH
# --------------

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(
  git
  nvm
)
source $ZSH/oh-my-zsh.sh

# My stuff
# --------------

alias dev="clear && cd ~/code && echo '******************************** \n get to work \n\n********************************' && ls -la"
alias trash="clear && cd ~/.Trash && echo '******************************** \n dumpster diving! \n\n********************************'"

alias ssh-joesepi="ssh joesepi@ps213317.dreamhostps.com"

# HUB
# https://hub.github.com/
# $ brew install hub
alias git=hub
alias gfi="git update-index --assume-unchanged"

# git delete all branches safe to delete
# http://stackoverflow.com/a/18571517/1766637
alias gitdel="git branch --merged master | grep -v master | xargs git branch -d"

# youtube-dl cli ftw
alias ytf="youtube-dl -F"
alias ytd="youtube-dl -t -f"

# UTILITIES
alias psef="ps -ef | grep"
alias srcit="source ~/.profile"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# convert files in directory from m4a to mp3
function m4a() {
  find . -iname '*.m4a' -exec bash -c 'ffmpeg -i "$1" "${1/m4a/mp3}"' -- {} \;
}

#!/usr/bin/env python
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

export PATH="/Users/joesepi/.gem/bin:/usr/local/opt/ccache/libexec:/Users/sepi/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:$PATH"

# RUBY
# ?? DO I REALLY NEED RUBY?
# --------------
# alias bex="bundle exec"

# export PATH="/Users/sepi/.rbenv/shims:${PATH}"
# export RBENV_SHELL=zsh

# Add rbenv, if we have/need it
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# export GEM_HOME=~/.gem
# export GEM_PATH=~/.gem
# eval "$(rbenv init -)"

# NVM
# --------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
