D=$(dirname "$(readlink -f $0)")

rm -f ~/.vim
rm -f ~/.vimrc
rm -f ~/.gvimrc

ln -s $D ~/.vim
ln -s .vim/vimrc ~/.vimrc
ln -s .vim/gvimrc ~/.gvimrc

ls -l ~/.vim ~/.vimrc ~/.gvimrc
