#!/usr/bin/env bash
rm -rf ~/.config/tmux
rm -rf ~/.config/nvim
rm -rf ~/.bashrc
rm -rf ~/.bash_aliases
rm -rf ~/.inputrc
rm -rf ~/.fonts

ln -s ~/.config/.dotfiles/tmux ~/.config/tmux
ln -s ~/.config/.dotfiles/nvim ~/.config/nvim
ln -s ~/.config/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.config/.dotfiles/bash/.bash_aliases ~/.bash_aliases
ln -s ~/.config/.dotfiles/bash/.inputrc ~/.inputrc
ln -s ~/.config/.dotfiles/fonts ~/.fonts

# link nvim as editor 
sudo rm /bin/editor
sudo ln -s /snap/nvim/current/usr/bin/nvim /bin/editor
