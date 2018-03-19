#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -alG'
PS1='\[\e[1;34m\]\u \[\e[0;32m\]\W \[\e[1;31m\]\$\[\e[0m\] '

alias processDump='ps -awxj'
alias fileScan='sudo fs_usage -f "filesys" | grep open'
alias prettyGitLog='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'
alias mapNetwork='nmap 192.168.1.0/24'
alias applyPatch='patch -p0 -i $1'
alias monitorPort='sudo tcpdump -i any port $1'
alias unix='date -r $1'
alias now='date +%s'
alias docker-clean='docker rm $(docker ps -q -f status=exited)'

# Git stuff
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gpom='git pull origin master'
