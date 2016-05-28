#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
shopt -s histappend

shopt -s checkwinsize
#aliasy:
alias pacman='sudo pacman'

alias adb='/home/seba/android-sdk-linux/platform-tools/adb'
#alias android='/home/seba/android-sdk-linux/tools/android'
#alias studio='~/android-studio/bin/studio.sh'
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#dopelnianie 
complete -cf sudo
complete -cf man
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
#kolorowanie dla usr 
#PS1='[\u@\h \W]\$ ' 
stty -ixon
PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;31m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\H\[\e[0m\]\[\e[00;37m\]]\[\e[0m\]\[\e[00;33m\]\W\[\e[0m\]\[\e[00;37m\]>>\[\e[0m\]\[\e[00;31m\]\\$\[\e[0m\]"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
