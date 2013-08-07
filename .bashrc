#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -alG'
PS1='\[\e[1;34m\]\u \[\e[0;32m\]\W \[\e[1;31m\]\$\[\e[0m\] '
