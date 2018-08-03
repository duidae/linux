# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
#export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color -1lpGgoh'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -l -Ch'
alias la='ls -A -Ch'
alias l='ls -CF'
alias vi='vim'
alias sudo='sudo env PATH=$PATH'

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\d\[\033[01;32m\] \t\[\033[01;36m\]@ \[\033[00;33m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\n\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

#########################################
#                                       #
#       my bash script                  #
#                                       #
#########################################
alias df="df -h"
alias cls='clear'
LS_COLORS='di=01;33:ex=01;31:*.exe=01;31:*.o=01;31:*.tar=00;35:*.tgz=00;35:*.zip=00;35:*.gz=00;35:*.bz2=00;35:*.c=01;36:*.h=01;36:*.cpp=01;36:*.java=01;32:'

#####show chinese file name
stty cs8 -istrip
stty pass8

# Chinese character
export LANG="zh_TW.UTF8"
export LC_ALL="zh_TW.UTF8"
export EDITOR=vim
#export XMODIFIERS="@im=xcin"

#export PATH=":"
