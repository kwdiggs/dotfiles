# Path to your oh-my-zsh installation.
export ZSH=/home/keenan/.oh-my-zsh

# housekeeping
ZSH_THEME="robbyrussell"
plugins=(git)
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
source $ZSH/oh-my-zsh.sh

# remove blank lines from file
# sed -i '/^$/d' file.txt

# remove duplicate lines from file
# awk '!seen[$0]++' filename

# pathing for go language
export GOPATH=$HOME/Dev/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOBIN=$GOPATH/bin

# meta aliases       
alias shortcuts='nano +19 ~/.zshrc'
alias renew='source ~/.zshrc'

# file nav/management
alias ll='ls -ah'
alias up='cd ..'
alias upp='cd ..; ll;'
alias new='mkdir'
alias raze='rm -rf'
alias dls='cd ~/Downloads'

# system
alias c='clear; printf "\n\n\n\n\n\n\n";'
alias userlist='cat /etc/passwd | cut -d ":" -f 1'
alias shell='echo $0'
alias die='exit'
alias gg!='systemctl suspend -i'
alias behave-net='service network-manager restart'

# utility and app launching
alias copy='xclip -selection c'
alias deduplicate="awk '!a[$0]++'"
alias bug='gdb -q'
alias chrome='/usr/bin/google-chrome'
alias droid='/usr/local/android-studio/bin/studio.sh'
alias behave-droid='sudo /home/keenan/Android/Sdk/platform-tools/adb kill-server; sudo /home/keenan/Android/Sdk/platform-tools/adb start-server'
alias lc='wc -l'

# git
alias gs='git status'
alias gclear='git checkout --'
alias gbr='git branch'
alias gnew='git checkout -b'
alias push='git push'

# just for fun
alias sl='sl -e -l -a'
alias steve='jobs'
alias crap="espeak 'oh crap'"
alias hg="espeak 'here goes nothing'"

# function
function dn() { cd $1 }
function dnn() { cd $1; ll }
function commands() { history | awk '{ print $2 }' | sort | uniq -c | sort -nr | head -20 }
function services() { service --status-all | grep $1 || service --status-all }
function jbuild() { javac $1.java; java $1 }
function newg() { new $1; cd $1 }
