dotfiles
========

my dot files


## Initial setup
- [setup ssh key](ssh-key) for machine locally and in github
- install homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- install oh-my-zsh: `curl -L http://install.ohmyz.sh | sh`
- Get Maximum Awesome:
  - view [your fork](maxawe) in Github to verify it is up to date,
  - then `git clone git@github.com:joesepi/maximum-awesome.git`
  - then cd in and run `cd maximum-awesome && rake`
- dotfiles
  - git clone this dotfiles repo: `git clone git@github.com:joesepi/dotfiles.git`
  - make sure the homepath and repo path and all are accurate to the new machine by looking at the simmerlinker script
  - backup files before creating new symlinks: `mv .bash_profile .gitconfig .gitignore .profile .vimrc.bundles.local .vimrc.local .zshrc ~/code/dotfiles/backup`
  - run the simmerlinker script: `sh ~/code/dotfiles/simmerlinker.sh`

[ssh-key]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh
[maxawe]: https://github.com/joesepi/maximum-awesome/tree/master
