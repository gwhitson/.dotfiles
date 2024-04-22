#!/usr/bin/env bash
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# turn off bell
xset b off

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

## Colors?  Used for the prompt.
#Regular text color
BLACK='\[\e[0;30m\]'
#Bold text color
BBLACK='\[\e[1;30m\]'
#background color
BGBLACK='\[\e[40m\]'
RED='\[\e[0;31m\]'
BRED='\[\e[1;31m\]'
BGRED='\[\e[41m\]'
GREEN='\[\e[0;32m\]'
BGREEN='\[\e[1;32m\]'
BGGREEN='\[\e[1;32m\]'
YELLOW='\[\e[0;33m\]'
BYELLOW='\[\e[1;33m\]'
BGYELLOW='\[\e[1;33m\]'
BLUE='\[\e[0;34m\]'
BBLUE='\[\e[1;34m\]'
BGBLUE='\[\e[1;34m\]'
MAGENTA='\[\e[0;35m\]'
BMAGENTA='\[\e[1;35m\]'
BGMAGENTA='\[\e[1;35m\]'
CYAN='\[\e[0;36m\]'
BCYAN='\[\e[1;36m\]'
BGCYAN='\[\e[1;36m\]'
WHITE='\[\e[0;37m\]'
BWHITE='\[\e[1;37m\]'
BGWHITE='\[\e[1;37m\]'

PROMPT_COMMAND=smile_prompt

function smile_prompt
{
    if [ "$?" -eq "0" ]
    then
        #smiley
        SC="${BGREEN}:)"
    else
        #frowney
        SC="${RED}:("
    fi
    if [ $UID -eq 0 ]
    then
        #root user color
        UC="${RED}"
    else
        #normal user color
        UC="${BWHITE}"
    fi
    #hostname color
    HC="${BBLUE}"
    #regular color
    RC="${BWHITE}"
    #default color
    DC="${YELLOW}"
    DF='\[\e[0m\]'
    PS1="${UC}\u${RC}@${HC}\h ${DC}[\W] ${SC}${DF} > ${WHITE}"
}

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# add .dotfiles scripts dir to path
export PATH="/home/gavin/.config/.dotfiles/scripts:$PATH"

#wal -R >/dev/null
bash ~/.config/.dotfiles/scripts/tmux/sessionizer.sh
