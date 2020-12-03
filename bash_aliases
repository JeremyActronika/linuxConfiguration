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

alias 'jlinkServer'='JLinkExe -AutoConnect 1 -Device NRF52832_XXAA -If SWD -Speed 4000'
alias 'jlinkRtt'='JLinkRTTClient'

alias 'matlab'='xfreerdp -f -u matlab 192.168.0.204'
alias 'matlabjeremy'='xfreerdp -f -u jeremy 192.168.0.204'
alias 'matlab-quit'='killall xfreerdp'
alias 'testbench'='xfreerdp -f -u actronika 192.168.0.207'

alias 'xhost_add_root'='xhost +si:localuser:root'

alias 'killswap'='sudo swapoff -a && sudo swapon -a'

alias 'prog-tools'='cd ~/workspace/tools/prog-tools > /dev/null; ./main.py --advanced; cd - > /dev/null'

export DEBEMAIL="jeremy.cheynet@actronika.com"
export DEBFULLNAME="Jérémy Cheynet"
