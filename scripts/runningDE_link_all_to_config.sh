#!/usr/bin/env bash

running="/home/gavin/.config/.dotfiles/running_DE"
config="/home/gavin/.config"

#test=$(ls)
for i in $(ls $running); do
    rm -rf $config/$i
    ln -s $running/$i $config/$i
done
