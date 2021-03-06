# Default aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi='/usr/bin/vim'

# List directory contents
alias ll='ls -al'

# Notes
alias cddoc='cd ~/Documents/tagspaces'

# Kubernetes
alias cdkube='cd ~/go/src/k8s.io/kubernetes'

# Kubernetes Projects
alias cdfed='cd ~/go/src/sigs.k8s.io/kubefed'

# Virsh
alias virshrmvollist='for i in $(sudo virsh vol-list default 2>&1 | awk "/^ disk/ {print $2}"); do sudo virsh vol-delete $i; done'
