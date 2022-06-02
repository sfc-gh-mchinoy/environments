
# Aliases
alias ll="ls -lhA"
alias ls="ls -CF"
alias sl="ls"
alias lsl="ls -lhFA | less"
alias cd..="cd .."
alias ..="cd .."
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias ps="ps auxf"
alias mkdir="mkdir -pv"
alias wget="wget -c"

## Command Prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]\n\[\e[91m\]>\[\e[00m\] "
