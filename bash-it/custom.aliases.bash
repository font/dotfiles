# Default aliases
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias vi='/usr/bin/vim'

# List directory contents
alias ll='ls -al'

# Git aliases
alias ga='git add'
alias grm='git rm'
alias gf='git fetch --all --prune'
alias gpristine='git reset --hard && git clean -dfx'
alias gclean='git clean -fd'
alias gmv='git mv'
alias g='git'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gr='git remote'
alias grv='git remote -v'
alias gra='git remote add'
alias gd='git diff'
alias gds='git diff --staged'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gcamd='git commit --amend'
alias gb='git branch'
alias gba='git branch -a'
alias gbm='git branch -m'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcob='git checkout -b'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gsl="git shortlog -sn"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"
alias gtls='git tag -l | sort -V'
alias gst="git stash"
# Show untracked files
alias gu='git ls-files . --exclude-standard --others'

# Notes
alias cddoc='cd ~/Documents/tagspaces'

# Kubernetes
alias cdkube='cd ~/go/src/k8s.io/kubernetes'

# Kubernetes Projects
alias cdfed='cd ~/go/src/sigs.k8s.io/kubefed'

# Virsh
alias virshrmvollist='for i in $(sudo virsh vol-list default 2>&1 | awk "/^ disk/ {print $2}"); do sudo virsh vol-delete $i; done'
