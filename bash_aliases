#!/bin/bash
## Alias de connection ssh pour les pads :
alias sshAnonymous="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias scpAnonymous="scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"

## Alias de connexion sur build et dev, etc ...
alias 'ssh-agent'="exec ssh-agent bash"

## Autre alias
alias ":x"="exit"
alias ":q!"="exit"
