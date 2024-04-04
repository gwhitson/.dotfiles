#!/bin/bash

curr="/home/gavin/.config"
new="/home/gavin/.config/.dotfiles/plasma"

rm "$curr/kactivitymanagerdrc"
ln -s "$new/kactivitymanagerdrc" "$curr/kactivitymanagerdrc"

rm "$curr/kconf_updaterc"
ln -s "$new/kconf_updaterc" "$curr/kconf_updaterc"

rm -rf "$curr/KDE"
ln -s "$new/KDE" "$curr/KDE"

rm "$curr/kded5rc"
ln -s "$new/kded5rc" "$curr/kded5rc"

rm "$curr/kdeglobals"
ln -s "$new/kdeglobals" "$curr/kdeglobals"

rm "$curr/kglobalshortcutsrc"
ln -s "$new/kglobalshortcutsrc" "$curr/kglobalshortcutsrc"

rm "$curr/khotkeysrc"
ln -s "$new/khotkeysrc" "$curr/khotkeysrc"

rm "$curr/kwinrc"
ln -s "$new/kwinrc" "$curr/kwinrc"

rm "$curr/kwinrulesrc"
ln -s "$new/kwinrulesrc" "$curr/kwinrulesrc"

rm "$curr/plasma-localerc"
ln -s "$new/plasma-localerc" "$curr/plasma-localerc"

rm "$curr/plasma-org.kde.plasma.desktop-appletsrc"
ln -s "$new/plasma-org.kde.plasma.desktop-appletsrc" "$curr/plasma-org.kde.plasma.desktop-appletsrc"

rm "$curr/plasmarc"
ln -s "$new/plasmarc" "$curr/plasmarc"

rm "$curr/plasmashellrc"
ln -s "$new/plasmashellrc" "$curr/plasmashellrc"

rm -rf "$curr/sakura"
ln -s "$new/sakura" "$curr/sakura"

rm "$curr/systemsettingsrc"
ln -s "$new/systemsettingsrc" "$curr/systemsettingsrc"
