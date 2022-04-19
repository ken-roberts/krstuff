# Ken Roberts 2010-11-02
# modified    2014-09-25
# modified    2021-08-04

krstuff_log 'Entering'

source $HOME/.git-prompt.sh

# Set up the prompt.
if [ "`id -u`" = "0" ]; then
	PS1='\[\033[01;05m\]\u\[\033[00m\]\[\033[01;31m\]@\h\[\033[01;34m\] $PWD \[\033[01;36m\]$(__git_ps1 "(%s)")
\[\033[01;34m\]\$\[\033[00m\]'
elif [ "$LOGNAME" = "$USER" ]; then
	PS1='\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[01;34m\] $PWD \[\033[01;36m\]$(__git_ps1 "(%s)")
\[\033[01;34m\]\$\[\033[00m\] '
else
	PS1='\[\033[01;35m\]\u\[\033[01;31m\]@\h\[\033[01;34m\] $PWD \[\033[01;36m\]$(__git_ps1 "(%s)")
\[\033[01;34m\]%\[\033[00m\] '
fi
export PS1

#[[ -s "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#PS1='\[\033[01;35m\]\u\[\033[01;31m\]@\h\[\033[01;34m\] $PWD \[\033[01;35m\]$(__git_ps1 "(%s)")
#%\[\033[00m\] '

krstuff_log 'Leaving'
