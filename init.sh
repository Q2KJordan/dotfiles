#!/bin/bash

echo "Creating necessary directories..."

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
mkdir -p ~/.vim/backup ~/.vim/swap ~/.vim/undo

echo "Removing old settings files..."

sudo rm -rf ~/.bash_profile > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.viminfo > /dev/null 2>&1
sudo rm -rf ~/.config/nvim/init.vim > /dev/null 2>&1
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.agignore > /dev/null 2>&1

echo "Linking settings to desired dotfiles..."

ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
ln -s ~/dotfiles/tmux ~/.tmux
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/agignore ~/.agignore

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
