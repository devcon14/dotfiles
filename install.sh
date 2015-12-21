mkdir ~/dotbackup
mv ~/.config/nvim/init.vim ~/dotbackup
mv ~/.inputrc ~/dotbackup
mv ~/.bashrc ~/dotbackup
ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/.inputrc ~/.inputrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
# install plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# :PlugUpdate!
