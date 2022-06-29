# Aliases I want on every system.
krstuff_log 'Entering'

alias mcd=make_and_change_dir

# System-specific aliases
alias c='clear'
#alias bb="$BROWSER"
alias df='df -h'
alias dud='du -hs `ls -A`'
alias dudg='du -hs `ls -A` | grep G'
alias dnsreset='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias fixterm='export TERM=xterm-256color'

UNAME="`uname -s`"
if [ "$UNAME" = 'Darwin' ]; then
	alias ll='ls -alhG'
	alias err='open target/test-reports/html/index.html'
	alias diff='colordiff'
	alias ctags='/usr/local/bin/ctags'
	alias ps='/bin/ps ax'
	alias psj='/bin/ps ax | grep java'
	alias psg='/bin/ps ax | grep'
elif [ "$UNAME" = 'Linux' ]; then
	alias ll='ls --color -alh'
	alias err='$BROWSER target/test-reports/html/index.html'
	alias ps='/bin/ps axf'
	alias psj='/bin/ps axf | grep java'
	alias psg='/bin/ps axf | grep'
fi

krstuff_log 'Leaving'
