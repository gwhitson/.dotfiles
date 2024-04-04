#!/bin/bash

cfgfile="/home/gavin/.config/.dotfiles/plasma"
running="/home/gavin/.config/.dotfiles/running_DE"

rm -rf $cfgfile
cp -r $running $cfgfile

git add /home/gavin/.config/.dotfiles/*
git commit -a -m 'saved plasma configuration'
git push
