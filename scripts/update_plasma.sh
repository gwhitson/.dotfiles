#!/bin/bash

scriptsdir="/home/gavin/.config/.dotfiles/scripts"

bash $scriptsdir/installs_apt.sh
bash $scriptsdir/runningDE_clear.sh
bash $scriptsdir/runningDE_set_plasma.sh
bash $scriptsdir/runningDE_link_all_to_config.sh
bash $scriptsdir/relink_nonDE_cfgs.sh

sudo apt update -y && sudo apt upgrade -y

reboot
