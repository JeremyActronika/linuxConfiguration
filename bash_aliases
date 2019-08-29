#!/bin/bash
## Alias de connection ssh pour les pads :
alias sshAnonymous="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias scpAnonymous="scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

## Alias de connexion sur build et dev, etc ...
alias 'ssh-agent'="exec ssh-agent bash"

alias 'gitCleanRemote'="gitClean; git remote prune origin"
alias 'gitClean'="git reflog expire --expire-unreachable=now --all;git gc --prune=now"

## Autre alias
alias ":x"="exit"
alias ":q!"="exit"

## fun ##
alias 'minikeums'='minicom'

alias 'xhost_add_root'='xhost +si:localuser:root'

alias 'killswap'='sudo swapoff -a && sudo swapon -a'
