PS1=$'\e[1;34m%n \e[0;32m%1~ \e[1;31m$ \e[0m'

setopt noautomenu
setopt nomenucomplete

# Aliases
alias ls='ls -G'
alias processDump='ps -awxj'
alias fileScan='sudo fs_usage -f "filesys" | grep open'
alias mapNetwork='nmap 192.168.1.0/24'
alias applyPatch='patch -p0 -i $1'
alias monitorPort='sudo tcpdump -i any port $1'
alias unix='date -r $1'
alias now='date +%s'
alias docker-clean='docker rm $(docker ps -q -f status=exited)'
alias docker-volume-clean='docker images -q --filter "dangling=true" | xargs -n 100 docker rmi'
alias mkpass='pwgen -s 32 -1'
alias netstatPorts='netstat -van | grep LISTEN'
alias increaseFds='ulimit -S -n $1'
alias largestDirs='sudo du -Sh / | sort -rh | head -5'
alias encrypt='ansible-vault encrypt $1'
alias decrypt='ansible-vault view --ask-vault-pass $1'
# sshTunnel PEM_FILE USER HOST LOCAL_PORT REMOTE_PORT
alias sshTunnel='ssh -i "$1" -L $4:$3:$5 -l $2 $2@$3'
alias goodffmpeg='ffmpeg -framerate 60 -pattern_type glob -i "./*/*.jpg" -f mp4 -q:v 0 -c:v libx264 -r 60 -s 1920x1080 myVideo.mp4'
alias serve='python -m SimpleHTTPServer 8000'
alias findByName='find . -iname $1'

# Functions
function zipSecure() { zip -er $2 $1; }

# Git Aliases
alias prettyGitLog='git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'
alias gs='git status'
alias ga='git add'
alias gd='git diff'
alias gb='git branch'
alias gpom='git pull origin master'
alias gitHistory='git log --full-history -- $1'
