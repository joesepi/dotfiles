# TODO: make this an interactive shell where it asks for homepath and repo path with current values as default

# To run script: `sh ~/code/dotfiles/simmerlinker.sh`

# Would this work better using the tilde (~) or did I already try that and it breaks for some reason?
homepath="/Users/joesepi"

repopath="$homepath/code/dotfiles/"
dotfiles=(".bash_profile" ".gitconfig" ".gitignore" ".profile" ".vimrc.bundles.local" ".vimrc.local" ".zshrc")

# backup existing files/symlinks
mv .bash_profile .gitconfig .gitignore .profile .vimrc.bundles.local .vimrc.local .zshrc $repopath/backup


cd "$homepath"
for i in "${dotfiles[@]}"
do
ln -s $repopath$i $i
done
echo "Read file content!"
cd -
