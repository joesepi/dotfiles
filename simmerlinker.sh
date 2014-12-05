homepath='~'
repopath='~/dotfiles/'
dotfiles=('.bash_profile' '.bashrc' '.gitconfig' '.gitignore' '.profile' '.vimrc.bundles.local' '.vimrc.local' '.zprofile' '.zshrc')

# TODO backup old files/symlinks

echo "Dont forget to install oh-my-zsh"
echo "==> curl -L http://install.ohmyz.sh | sh"

cd "$homepath"
for i in "${dotfiles[@]}"
do
ln -s $repopath$i $i
done
echo "Read file content!"
cd -
