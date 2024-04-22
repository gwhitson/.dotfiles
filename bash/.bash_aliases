#!/usr/bin/env bash
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias sh='bash'
alias vi='nvim'
alias vim='nvim'
alias clear_nvim_cache='rm ~/.local/nvim/state/swap/*'
alias fman='compgen -c | \fzf-tmux -p | xargs man'
alias fzf="fzf-tmux -p --preview 'cat {}'"
