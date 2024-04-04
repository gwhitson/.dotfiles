#!/bin/bash

# installs_apt.sh
sudo apt update -y
sudo apt install neofetch -y
sudo apt install gcc -y
sudo apt install git -y
sudo apt install python3.10-venv -y
sudo apt install imagemagick -y
sudo apt install python3-pip -y
sudo apt install tmux -y
sudo pip install pywal
sudo apt install kde-plasma-desktop -y
sudo apt install plasma-nm -y
sudo snap install nvim --classic

 echo "InputMethod=" | sudo tee -a '/etc/sddm.conf'

git clone https://github.com/gwhitson/.dotfiles ~/.config/.dotfiles
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

bash /home/gavin/.config/.dotfiles/update_plasma.sh
