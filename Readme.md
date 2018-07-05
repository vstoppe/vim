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

`:PluginInstall`


## YouCompleMe 

Components of YouCompleteMe have to be compoiled on the target system:

`cd ~/.vim/bundle/YouCompleteMe`

`./install.py --all`

The following Packaged may have to be installed:


Debian/Ubuntu World:

`apt-get install build-essential cmake python-dev python3-dev`


RHEL world:

`yum install cmake`