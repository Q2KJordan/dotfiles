#!/bin/bash

echo "-------------------------------"
echo "Installing Dein"
echo "-------------------------------"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein-installer/installer.sh
sh ~/dein-installer/installer.sh ~/.dein

echo "-------------------------------"
echo "Installing zsh/python3/git/tmux"
echo "           ag/fzf/ctags/neovim"
echo "-------------------------------"
brew install zsh zsh-completions python3 git tmux ag fzf ctags-exuberant neovim

echo "-------------------------------"
echo "Assigning Zsh as default shell"
echo "-------------------------------"
chsh -s /usr/local/bin/zsh

echo "-------------------------------"
echo "Upgrading NeoVim with Python"
echo "-------------------------------"
pip3 install neovim

echo "-------------------------------"
echo "Creating necessary directories"
echo "-------------------------------"
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
mkdir -p ~/.vim/backup ~/.vim/swap ~/.vim/undo

echo "-------------------------------"
echo "Removing old settings files"
echo "-------------------------------"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.viminfo > /dev/null 2>&1
sudo rm -rf ~/.config/nvim/init.vim > /dev/null 2>&1
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.agignore > /dev/null 2>&1

echo "-------------------------------"
echo "Symlinking dotfiles"
echo "-------------------------------"
ln -s ~/dotfilez/zsh/zshrc ~/.zshrc
ln -s ~/dotfilez/.vimrc ~/.vimrc
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
ln -s ~/dotfilez/tmux ~/.tmux
ln -s ~/dotfilez/tmux.conf ~/.tmux.conf
ln -s ~/dotfilez/agignore ~/.agignore

echo "*******************************"
echo "*    Restart your terminal    *"
echo "*******************************"
