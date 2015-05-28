export TERM="xterm-color"
source ~/.bash_aliases
source ~/.git-prompt.sh
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]$(__git_ps1 "(%s)")\$ '
export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH:$HOME/.node/bin
HISTFILESIZE=3000
