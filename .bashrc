# Restore the default OS X Prompt
# (Hostname:CurrentWorkingDirectory Username$)
PS1='\h:\W \u\$ '

### Added by IBM Bluemix CLI
source /usr/local/Bluemix/bx/bash_autocomplete

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias ic="ibmcloud"
