# Ken Roberts 2010-11-02
# modified    2014-09-25
# modified    2021-08-04

krstuff_log 'Entering'

set -o physical

BROWSER='chrome'
CDPATH='.:..'
EDITOR='code --wait'
HISTTIMEFORMAT="%Z %Y-%m-%d %H:%M:%S"
HISTFILESIZE=30000
HISTSIZE=10000
HISTCONTROL=ignoredups:erasedups
#PROMPT_COMMAND="history -a;history -c;history -r"
#shopt -s histappend



export BROWSER CDPATH EDITOR ENV HISTFILESIZE HISTSIZE HISTTIMEFORMAT HISTCONTROL

krstuff_log 'Leaving'
