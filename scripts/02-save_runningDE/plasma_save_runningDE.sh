#!/bin/bash

dotfiles="/home/gavin/.config/.dotfiles"
cfgfile="$dotfiles/plasma"
running="$dotfiles/running_DE"

rm -rf $cfgfile
cp -r $running $cfgfile

sleep 2

curr=`pwd`

cd $dotfiles
git add *
git commit * -m 'saved plasma configuration'
git push
cd $curr
