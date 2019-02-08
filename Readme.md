Readme.md


# Checkout (als Puppet_IDE)

`git clone http://gitlab.lindenbox.de/vst/vim.git --branch puppet_ide --single-branch ~/.vim`



# My personal vim configuration

Don't forget to link:

`ln -s ~/.vim/vimrc ~/.vimrc`

If you like to use this configuration for neovim link like this.

`ln -s ~/.vim/vimrc ~/.config/nvim/init.vim`


## Powerline status bar

Hier müssen ggf. noch ein paar Pakete nachinstalliert werden:

`aptitute install psutils socat`

`pip install powerline-status`

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

