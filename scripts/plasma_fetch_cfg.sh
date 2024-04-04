#!/bin/bash

cfgfile="/home/gavin/.config/.dotfiles/plasma/config-"
cfgfile+=$(printf '%(%Y-%m-%d)T' -1)

echo $cfgfile
mkdir $cfgfile

cp -r ~/.config/systemsettingsrc $cfgfile
cp -r ~/.config/plasmashellrc $cfgfile
cp -r ~/.config/plasmarc $cfgfile
cp -r ~/.config/plasma-org.kde.plasma.desktop-appletsrc $cfgfile
cp -r ~/.config/plasma-localerc $cfgfile
cp -r ~/.config/kwinrulesrc $cfgfile
cp -r ~/.config/kwinrc $cfgfile
cp -r ~/.config/khotkeysrc $cfgfile
cp -r ~/.config/kglobalshortcutsrc $cfgfile
cp -r ~/.config/KDE $cfgfile
cp -r ~/.config/kdeglobals $cfgfile
cp -r ~/.config/kded5rc $cfgfile
cp -r ~/.config/kconf_updaterc $cfgfile
cp -r ~/.config/kactivitymanagerdrc $cfgfile
cp -r ~/.config/sakura $cfgfile
cp -r ~/.kde $cfgfile

git add *
git commit -a -m 'saved configuration'
git push
