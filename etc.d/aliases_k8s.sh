# Kubernetes-specific settings to be read in from ~/.bash_profile

alias k=kubectl
alias kc='kubectl config'
alias kccc='kubectl config current-context'
alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'
alias kgd='get-deployments-with-labels'
alias mk=minikube
alias mkc='minikube config'

source <(kubectl completion bash)

### --- kubectl ---
alias nfspod="kubectl get pods -n storage -l 'role=nfs-server' -o name | sed 's/^pod\///'"
complete -F __start_kubectl k # bash completion redirect
export KUBE_EDITOR='code --wait'
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config
# add all yamls in 
for yfile in $(find ~/.kube/configs -iname '*.yml' -or -iname '*.yaml'); do
    KUBECONFIG="$KUBECONFIG:$yfile"
    done
