# Aliases I want on every system.
krstuff_log 'Entering'

alias mcd=make_and_change_dir

# System-specific aliases
alias c='clear'
#alias bb="$BROWSER"
alias df='df -h'
alias dud='du -hs `ls -A`'
alias dudg='du -hs `ls -A` | grep G'

UNAME="`uname -s`"
if [ "$UNAME" = 'Darwin' ]; then
	alias ll='ls -alhG'
	alias err='open target/test-reports/html/index.html'
elif [ "$UNAME" = 'Linux' ]; then
	alias ll='ls --color -alh'
	alias err='$BROWSER target/test-reports/html/index.html'
fi
alias ps='/bin/ps axf'
alias psj='/bin/ps axf | grep java'
alias psg='/bin/ps axf | grep'

krstuff_log 'Leaving'
