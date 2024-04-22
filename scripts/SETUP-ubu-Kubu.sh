#!/bin/bash

# installs_apt.sh
sudo apt install git -y

 echo "InputMethod=" | sudo tee -a '/etc/sddm.conf'

git clone https://github.com/gwhitson/.dotfiles ~/.config/.dotfiles
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

bash /home/gavin/.config/.dotfiles/scripts/update_plasma.sh
