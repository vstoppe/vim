# Abstract

This is my personal vim configuration as an IDE für puppet, docker, bash and other works. It is currently used with neovim 0.3.8. The plugin management is done with vim-plug.

The most important features are:
- [airline statusline](https://github.com/vim-airline/vim-airline)
- [Asynchronous Lint Engine](https://github.com/dense-analysis/ale) for real time syntax highlighting
- [vim-autoclose](https://github.com/vstoppe/vim)
- [ctrl-p](https://github.com/kien/ctrlp.vim) fussy search engine
- [fugitive](https://github.com/tpope/vim-fugitive) vim integration
- [Nerdtree filemanager](https://github.com/scrooloose/nerdtree)
- [Deoplete](https://github.com/Shougo/deoplete.nvim)
- [Neosnippet](https://github.com/Shougo/neosnippet.vim)
- [vim-puppet](https://github.com/rodjek/vim-puppet) / puppet-lint
- [Snipmate](https://github.com/garbas/vim-snipmate)
- [vim-snippets](https://github.com/honza/vim-snippets)
- [smoothscroll](https://github.com/terryma/vim-smooth-scroll) make scrolling smooth
- [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml) supports work with yaml files


# Concept

The configuration of the plugins reside in the ${plugin}.vim files. Sometimes several plugins work together to provide a functionaliy. In this time they share a common .vim file. The plugin files are also ment to store the parameter for the plugins. In this way everything is in an intuitive to find place. The plugin.vim files are sourced one by one in the vimrc file. In this way plugins, or better functionalites, can be easily enabled or disabled.


# Checkout

`git clone http://github.com/vstoppe/vim.git --branch master --single-branch ~/.vim`



# Setup

Don't forget to link:

`ln -s ~/.vim/vimrc ~/.vimrc`

If you like to use this configuration for neovim link like this.

`ln -s ~/.vim/vimrc ~/.config/nvim/init.vim`


## Install plugins


Before using Vim with the plugins a the vimplug plugin manager has to be installed:

Vim 8

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    
    
Neovim

`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Install plugins in vim with vim-plug 

`:PlugInstall`

