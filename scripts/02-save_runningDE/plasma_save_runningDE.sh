#!/bin/bash

cfgfile="/home/gavin/.config/.dotfiles/plasma"
running="/home/gavin/.config/.dotfiles/running"

rm -rf $cfgfile
cp -r $running $cfgfile

git add *
git commit -a -m 'saved plasma configuration'
git push
