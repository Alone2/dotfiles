#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[1;32m\]\u@\h\[\e[1;34m\] \W \[\e[1;36m\]\$ \[\e[m\]"

(( [[ -z "$(tty | grep tty)" ]] && [[ $TERM != "screen" ]] ) || [ -n "$SSH_CLIENT" ] ) && exec tmux

# use neovim
alias vim='nvim'
# xclip to copy
alias xclipcp='xclip -selection clipboard'
alias rn='ranger'
[ $(nproc) -gt 3 ] && alias make="/usr/bin/make -j $(expr $(nproc) / 3 \* 2)" && setenv MAKEFLAGS '-j $(expr $(nproc) / 3 \* 2)'
set -o vi

