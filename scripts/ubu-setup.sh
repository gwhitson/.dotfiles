#!/bin/bash
sudo apt update -y
sudo apt install neofetch -y
sudo apt install gcc -y
sudo apt install git -y
sudo apt install python3.10-venv -y
sudo apt install imagemagick -y
sudo apt install python3-pip -y
sudo apt install tmux -y
sudo pip install pywal
sudo snap install nvim --classic
sudo apt install kde-plasma-desktop -y
sudo apt install plasma-nm -y

 echo "InputMethod=" | sudo tee -a '/etc/sddm.conf'

git clone https://github.com/gwhitson/.dotfiles ~/.config/.dotfile
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

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
