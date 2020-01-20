# INSTRUCTIONS
# 1. install oh-my-zsh (see below)
echo "Dont forget to install oh-my-zsh before running this"
echo "==> curl -L http://install.ohmyz.sh | sh"

# 1b. install maximum awesome?
# clone github.com/joesepi/maximum-awesome
# 2. run rm -rf (see below)
# 3. edit $homepath in ~/code/dotfiles/simmerlinker.sh
# 4. run simmerlinker: > sh ~/code/dotfiles/simmerlinker.sh

homepath="/Users/joesepi"

repopath="$homepath/code/dotfiles/"
dotfiles=(".bash_profile" ".gitconfig" ".gitignore" ".profile" ".vimrc.bundles.local" ".vimrc.local" ".zshrc")

# TODO backup old files/symlinks
# rm -rf .bash_profile .bashrc .eslintrc .gitconfig .gitignore .jscsrc .jshintrc .profile .tern-project .vimrc.bundles.local .vimrc.local .zshrc .zprofile


cd "$homepath"
for i in "${dotfiles[@]}"
do
ln -s $repopath$i $i
done
echo "Read file content!"
cd -
