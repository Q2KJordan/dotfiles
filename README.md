# Joe Wroten's Dotfiles
Develop using just the terminal with the very best tools. iTerm2, NeoVim, The Silver Searcher, FuzzyFinder, Dein, and more!

> Inspired by [Toran B.](https://twitter.com/toranb) 's dotfiles who got me started with my modern workflow.💙

## Please Note
This is intended to set up a developers environment from the ground up.

Running `init.sh` will **replace** your bash_profile, vim/NeoVim settings, tmux settings, and ag settings. _Run at your own risk._

## Install

Be sure your Xcode _and_ Xcode command line tools are installed and up to date.

1. Get This Repo `git clone git@github.com:sharpshark28/dotfiles.git ~/dotfilez`
2. Run Init `bash ~/dotfilez/init.sh`
3. Restart your terminal

Get started in your project dir with `nvim` and enjoy!

## Tips

### Vim/NeoVim Stuffs

* Leader is `<Space>`
* Navigate Buffers
  * Next buffer `<Tab>`
  * Previous buffer `<Shift> + <Tab>`
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
* Linting happens on file safe
  * TODO Soon this will happen live!
  * Use NeoVim if you want this to be async
