mkdir ~/dotbackup
mv ~/.nvimrc ~/dotbackup
mv ~/.inputrc ~/dotbackup
mv ~/.bashrc ~/dotbackup
ln -s ~/dotfiles/.nvimrc ~/.nvimrc
ln -s ~/dotfiles/.inputrc ~/.inputrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
# install plug
curl -fLo ~/.nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# :PlugUpdate!
