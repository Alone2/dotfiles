#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\e[1;32m\u@\h\e[1;34m \W \e[1;37m$ \e[0;37m"

# use neovim
alias vim='nvim'

set -o vi
