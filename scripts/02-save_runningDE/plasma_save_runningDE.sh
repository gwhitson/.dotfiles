#!/bin/bash

cfgfile="/home/gavin/.config/.dotfiles/plasma"
running="/home/gavin/.config/.dotfiles/running_DE"

rm -rf $cfgfile
cp -r $running $cfgfile

sleep 2

git add /home/gavin/.config/.dotfiles/*
git commit /home/gavin/.config/.dotfiles/* -m 'saved plasma configuration'
git push
