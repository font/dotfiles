#!/usr/bin/env bash

# User specific settings
if [[ -v DEMO_SESSION ]]; then
    export THEME_SHOW_CLOCK=false
    export SCM_CHECK=false
    export THEME_SHOW_USER_HOST=false
fi

# Set local to US UTF-8 characters for bash-it and some themes
export LC_ALL=en_US.UTF-8

# If set to ‘on’, words which have more than one possible completion
# cause the matches to be listed immediately instead of ringing the
# bell. The default value is ‘off’.
bind 'set show-all-if-ambiguous on'

# Environment variables
export EDITOR='vim'
export VISUAL='vim'
export HISTSIZE=20000 # Size of bash history
export HISTFILESIZE=${HISTSIZE} # Size of bash history file
export HISTCONTROL=ignorespace:ignoredups

# Vagrant variables
export VAGRANT_DEFAULT_PROVIDER=libvirt

# Support for X11-clipboard and resizing panes through tmux when using Fedora
if [ -e /usr/bin/vimx ]; then
    alias vi='/usr/bin/vimx'
    alias vim='/usr/bin/vimx'
    export EDITOR='vimx'
    export VISUAL='vimx'
fi

# Disable scroll lock so as to not be disturbed by ctrl-S ctrl-Q in terminals:
stty -ixon

# Replace directory names with the results of word expansion when performing
# filename completion
shopt -s direxpand

# Functions
function docker-remove-stale-assets() {
    if [[ ! $(docker ps --filter status=exited -q) == "" ]]; then
        docker rm --volumes $(docker ps --filter status=exited -q)
    elif [[ ! $(docker images --filter dangling=true -q) == "" ]]; then
        docker rmi $(docker images --filter dangling=true -q)
    fi
}

function podman-remove-stale-assets() {
    if [[ ! $(podman ps --filter status=exited -q) == "" ]]; then
        podman rm --volumes $(podman ps --filter status=exited -q)
    elif [[ ! $(podman images --filter dangling=true -q) == "" ]]; then
        podman rmi $(podman images --filter dangling=true -q)
    fi
}

function create-insecure-registry() {
  # Run insecure registry as container
  docker run -d -p 5000:5000 --restart=always --name registry registry:2
}
