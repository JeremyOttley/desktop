export TERM="xterm-256color"
export HISTCONTROL=ignoredups:erasedups
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t -a ''"
export VISUAL="emacsclient -c -a emacs"
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'
[[ $- != *i* ]] && return
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s expand_aliases
shopt -s checkwinsize
bind "set completion-ignore-case on"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'
alias free='free -m'
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'
alias merge='xrdb -merge ~/.Xresources'
alias jctl="journalctl -p 3 -xb"
