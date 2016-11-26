# Path to your oh-my-zsh installation.
  export ZSH=/home/keenan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# pathing for go language
export GOPATH=$HOME/Dev/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
export GOBIN=$GOPATH/bin

# meta aliases       
alias shortcuts='nano +86 ~/.zshrc'
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
alias steve='jobs'
alias crap="espeak 'oh crap'"
alias hg="espeak 'here goes nothing'"

# utility and app launching
alias copy='xclip -selection c'
alias sl='sl -e -l -a'
alias bug='gdb -q'
alias chrome='/usr/bin/google-chrome'
alias droid='/usr/local/android-studio/bin/studio.sh'
alias behave-droid='sudo /home/keenan/Android/Sdk/platform-tools/adb kill-server; sudo /home/keenan/Android/Sdk/platform-tools/adb start-server'

# git
alias gs='git status'
alias gclear='git checkout --'
alias gbr='git branch'
alias gnew='git checkout -b'
alias push='git push'

# custom function
function dn() { cd $1 }
function dnn() { cd $1; ll }
function commands() { history | awk '{ print $2 }' | sort | uniq -c | sort -nr | head -20 }
function services() { service --status-all | grep $1 || service --status-all }
function jbuild() { javac $1.java; java $1 }
function news() { mkdir $1; cd $1 }

