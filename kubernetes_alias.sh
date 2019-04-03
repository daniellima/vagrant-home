alias k="kubectl $*"
alias kg="kubectl get $* -o wide"
alias kd="kubectl describe $*"

resources=(ingress service deployment replicaset pod node)
shortcuts=(i s d r p n)

index=0
for shortcut in ${shortcuts[*]}
do
    index=$(( index+1 ))

    alias k${shortcut}="kubectl get ${resources[index]} $*"
    alias k${shortcut}w="kubectl get ${resources[index]} -o wide $*"
    alias kg${shortcut}="kubectl get ${resources[index]} $* -o yaml"
    alias wk${shortcut}="watch -n1 kubectl get ${resources[index]} $*"
    alias wk${shortcut}w="watch -n1 kubectl get ${resources[index]} -o wide $*"
    alias kd${shortcut}="kubectl describe ${resources[index]} $*"    
done