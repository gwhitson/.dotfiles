#!/bin/bash
rm -rf ~/.config/tmux
rm -rf ~/.config/nvim
rm -rf ~/.cache/wal
sudo rm /bin/editor
rm -rf ~/.bashrc
rm -rf ~/.bash_aliases

ln -s ~/.config/.dotfiles/tmux ~/.config/tmux
ln -s ~/.config/.dotfiles/nvim ~/.config/nvim
cp -r ~/.config/.dotfiles/wal ~/.cache/wal
sudo ln -s /snap/nvim/current/usr/bin/nvim /bin/editor
ln -s ~/.config/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.config/.dotfiles/bash/.bash_aliases ~/.bash_aliases
