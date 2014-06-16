# My dotfiles



## Install on OS


**NOTE:** This is a work in progress. Do not run these commands until you understand what I am doing.

### I am SHARING vim among users.


sudo su
cd /usr/local/etc
git clone git@github.com:LarryEitel/dotfiles.git
cd dotfiles


git clone https://github.com/gmarik/Vundle.vim.git /usr/local/etc/dotfiles/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
mkdir -p /usr/local/etc/dotfiles/.vim/.cache/
mkdir -p /usr/local/etc/dotfiles/.vim/sessions/
sudo chmod -R 777 /usr/local/etc/dotfiles/.vim/.cache/
sudo chmod -R 777 /usr/local/etc/dotfiles/.vim/sessions/


# Link to vagrant user
ln -sf /usr/local/etc/dotfiles/.vimrc /home/vagrant/.vimrc 
ln -sf /usr/local/etc/dotfiles/.vim /home/vagrant/.vim
ln -sf /usr/local/etc/dotfiles/.bash_aliases /home/vagrant/.bash_aliases
ln -sf /usr/local/etc/dotfiles/.bashrc /home/vagrant/.bashrc
sudo chown -R vagrant:vagrant /home/vagrant/.vimrc 
sudo chown -R vagrant:vagrant /home/vagrant/.vim
sudo chown -R vagrant:vagrant /home/vagrant/.bash_aliases
sudo chown -R vagrant:vagrant /home/vagrant/.bashrc 


# Link to root
ln -sf /usr/local/etc/dotfiles/.vimrc /root/.vimrc 
ln -sf /usr/local/etc/dotfiles/.vim /root/.vim
ln -sf /usr/local/etc/dotfiles/.bash_aliases /root/.bash_aliases
ln -sf /usr/local/etc/dotfiles/.bashrc /root/.bashrc

