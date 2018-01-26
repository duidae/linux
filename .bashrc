# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

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

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#xterm-color)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#    ;;
#*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#    ;;
#esac

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

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profiles
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi


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
#export LANG=C
#export LC_CTYPE=zh_TW.Big5
#export LC_CTYPE=iso-8859-1
#alias crxvt='rxvt -fm "細明體-16" -fn "細明體-16" -km big5 -e bash --login -i'

# Chinese character
export LANG="zh_TW.UTF8"
export LC_ALL="zh_TW.UTF8"
export EDITOR=vim
#export XMODIFIERS="@im=xcin"



PATH="/home/duidae/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/duidae/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/duidae/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/duidae/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/duidae/perl5"; export PERL_MM_OPT;
