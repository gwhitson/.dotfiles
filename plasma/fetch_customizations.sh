#!/bin/bash

cfgfile="~/.config/.dotfiles/plasma/config-"
cfgfile+=$(printf '%(%Y-%m-%d)T' -1)

echo $cfgfile
mkdir $cfgfile

cp -r ~/.config/systemsettingsrc $cfgfile
cp -r ~/.config/ $cfgfile
cp -r ~/.config/plasmashellrc $cfgfile
cp -r ~/.config/plasmarc $cfgfile
cp -r ~/.config/plasma-org.kde.plasma.desktop-appletsrc $cfgfile
cp -r ~/.config/plasma-localerc $cfgfile
cp -r ~/.config/kwinrulesrc $cfgfile
cp -r ~/.config/kwinrc $cfgfile
cp -r ~/.config/khotkeysrc $cfgfile
cp -r ~/.config/kglobalshortcutsrc $cfgfile

git add *
git commit -a -m 'saved configuration'
git push
