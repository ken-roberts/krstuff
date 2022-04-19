krstuff_log 'Entering'

# Git related aliases
alias gittagdate='git log --tags --simplify-by-decoration --pretty="format:%ci %d"'
alias gittagseq='git log --tags --oneline --decorate --simplify-by-decoration'
alias glog='git log -n 5 --show-signature'
alias ggl='git log --graph --oneline -n 20 --show-signature'
alias ggll='git log --graph --oneline -n 50 --show-signature'
alias gprl='git pull --rebase --log'
alias gco='git checkout'
alias gcod='git checkout dev'
alias gcom='git checkout master'
alias grpo='git remote prune origin'
alias gba='git branch -a'
alias gs='git status'
alias m='make'

krstuff_log 'Leaving'
