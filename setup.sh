#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install git

cd ~

git clone git://github.com/ralkan/vimrc_new.git .vim
ln -s ~/.vim/vimrc ~/.vimrc

sudo apt-get -y install silversearcher-ag
sudo apt-get -y install xsel tmux

mkdir ~/Sourcebox
cd ~/Sourcebox
git clone https://github.com/zekzekus/dotfiles.git

ln -s ~/Sourcebox/dotfiles/tmux/tmux.ubuntu.conf ~/.tmux.conf
sed -i -e 's/fish/zsh/g' ~/.tmux.conf

sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sed -i -e 's/robbyrussell/agnoster/g' ~/.zshrc
source ~/.zshrc
tmux
