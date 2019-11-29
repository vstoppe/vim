# Abstract

This is my personal vim configuration as an IDE für puppet, docker, bash and other works.


# Checkout

`git clone http://gitlab.lindenbox.de/vst/vim.git --branch master --single-branch ~/.vim`



# My personal vim configuration

Don't forget to link:

`ln -s ~/.vim/vimrc ~/.vimrc`

If you like to use this configuration for neovim link like this.

`ln -s ~/.vim/vimrc ~/.config/nvim/init.vim`


## Plugins in Vim installieren


Before using Vim with the plugins a the vimplug plugin manager has to be installed:

Vim 8

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    
    
Neovim

`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`


After this Vim has to call

`:PlugInstall`

