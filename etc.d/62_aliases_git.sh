krstuff_log 'Entering'

# Git related aliases
alias gittagdate='git log --tags --simplify-by-decoration --pretty="format:%ci %d"'
alias gittagseq='git log --tags --oneline --decorate --simplify-by-decoration'
alias glog='git log -n 5'
alias ggl='git log --graph --oneline -n 20'
alias ggll='git log --graph --oneline -n 50'
alias gprl='git pull --rebase --log'
alias gco='git checkout'
alias gcom='git checkout master'
alias grpo='git remote prune origin'
alias gba='git branch -a'
alias gs='git status'

krstuff_log 'Leaving'
