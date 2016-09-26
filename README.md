# Kendall Jordan's Dotfiles

> Inspired by Joe W./[Toran B.](https://twitter.com/toranb) 's dotfiles 

## Please Note
This is intended to set up a developers environment from the ground up.

Running `init.sh` will **replace** your bash_profile, vim/NeoVim settings, tmux settings, and ag settings. _Run at your own risk._

## Install

Be sure your Xcode and Xcode command line tools are installed and up to date. GL

1. Get Dein Installer `curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein-installer/installer.sh`
2. Install Dein`sh ~/dein-installer/installer.sh ~/.dein`
3. Install Other Tools `brew install python3 git tmux ag fzf ctags-exuberant neovim`
4. Upgrade NeoVim with Python `pip3 install neovim`
5. Get This Repo `git clone git@github.com:sharpshark28/dotfiles.git ~/dotfilez`
6. Run Init `bash ~/dotfilez/init.sh`
7. restart terminal

## Tips

### Vim/NeoVim 

* Leader is `<space>`
* Navigate Buffers
  * View buffer `<space> fb` 
  * Reopen last file `<Space> <Space>`
  * Close buffer `:bd`
* Mouse support is disabled
  * (can be enabled in NeoVim with iTerm2 by setting `set mouse=a`)
* Navigating Between Files
  * Nerdtree (file tree)
    * Toggle `<Space> d`
    * Open from current file `<Space> D`
  * Ag (The Silver Searcher)
    * `<Space> a`
  * Fuzzy File Finder
    * `<Space> ff`
* Navigating Within a File
  * Between Words
    * `w` Next Word
    * `b` Previous (Back) Word
    * `,w` Next Word Camelcase
    * `,b` Previous (Back) Word Camelcase
  * Sneak
    * `f{char}{char}` sneaks forward
    * `F{char}{char}` sneaks backward
  * By Tag
    * `<Space>t` Opens the tagbar
    * `:bd` Closes the tagbar
* Altering Code
  * Changing Surrounding Code ([See More](https://github.com/tpope/vim-surround))
    * `cs"'` changes "Wow!" to 'Wow!'
    * `cs[{` changes [woah: 'neat'] to {woah: 'neat'}
* Linting happens on file save
