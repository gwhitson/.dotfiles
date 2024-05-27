#!/usr/bin/env bash
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sh='bash'
alias vi='nvim'
alias vim='nvim'
alias clear_nvim_cache='rm ~/.local/state/nvim/swap/*.swp'
alias fman='compgen -c | \fzf-tmux -p | xargs man'
alias fzf="fzf-tmux -p --preview 'less {}' | xargs editor"
dph () { dolphin $(pwd) 2>/dev/null & }
