#!/bin/bash

curr="/home/gavin/.config"
new="/home/gavin/.config/.dotfiles/plasma"

rm "$curr/plasmarc"
ln -s "$new/plasmarc" "$curr/plasmarc"

rm "$curr/systemsettingsrc"
ln -s "$new/systemsettingsrc" "$curr/systemsettingsrc"

rm "$curr/plasmashellrc"
ln -s "$new/plasmashellrc" "$curr/plasmashellrc"

rm "$curr/plasma-org.kde.plasma.desktop-appletsrc"
ln -s "$new/plasma-org.kde.plasma.desktop-appletsrc" "$curr/plasma-org.kde.plasma.desktop-appletsrc"

rm "$curr/plasma-localerc"
ln -s "$new/plasma-localerc" "$curr/plasma-localerc"

rm "$curr/kwinrulesrc"
ln -s "$new/kwinrulesrc" "$curr/kwinrulesrc"

rm "$curr/kwinrc"
ln -s "$new/kwinrc" "$curr/kwinrc"

rm "$curr/khotkeysrc"
ln -s "$new/khotkeysrc" "$curr/khotkeysrc"

rm "$curr/kglobalshortcutsrc"
ln -s "$new/kglobalshortcutsrc" "$curr/kglobalshortcutsrc"

rm -rf "$curr/sakura"
ln -s "$new/sakura" "$curr/sakura"
