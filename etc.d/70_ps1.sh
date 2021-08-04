# Ken Roberts 2010-11-02
# modified    2014-09-25
# modified    2021-08-04

krstuff_log 'Entering'

# Set up the prompt.
if [ "`id -u`" = "0" ]; then
	PS1='\[\033[01;05m\]\u\[\033[00m\]\[\033[01;31m\]@\h\[\033[01;34m\] $PWD
\$\[\033[00m\] '
elif [ "$LOGNAME" = "$USER" ]; then
	PS1='\[\033[01;32m\]\u\[\033[01;31m\]@\h\[\033[01;34m\] $PWD
\$\[\033[00m\] '
else
	PS1='\[\033[01;35m\]\u\[\033[01;31m\]@\h\[\033[01;34m\] $PWD
%\[\033[00m\] '
fi
export PS1

krstuff_log 'Leaving'
