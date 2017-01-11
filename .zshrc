# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git chuck)
source $ZSH/oh-my-zsh.sh

source ~/.profile

export NVM_DIR="/Users/joesepi/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by IBM Bluemix CLI
source /usr/local/Bluemix/bx/zsh_autocomplete
