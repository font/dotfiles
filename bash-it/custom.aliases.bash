alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi='vim'

# Kubernetes
alias cdkube='cd ~/go/src/k8s.io/kubernetes'

# Kubernetes Federation
alias cdfed='cd ~/go/src/sigs.k8s.io/kubefed'
alias kf='kubefedctl'

# Virsh
alias virshrmvollist='for i in $(sudo virsh vol-list default 2>&1 | awk "/^ disk/ {print $2}"); do sudo virsh vol-delete $i; done'

# mutt
alias mutt='cd ~/.mutt/downloads && mutt'
