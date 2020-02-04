# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "/home/nfs/code/aws/bin" ] ; then
    PATH="/home/nfs/code/aws/bin:$PATH"
fi

alias ls="ls -lrthF --color=auto"
alias sl="ls"
alias LS="ls"
alias free="free -h"
alias df="df -h"
alias ps-node="ps -aux | grep node | grep -v grep"
alias python="python3"
alias pip="pip3"

alias count="/bin/ls -f | wc -l"
alias free="free -h"
alias df="df -h"
alias ps-node="ps -aux | grep node | grep -v grep"
alias lsa="ls -a"
alias lsg="ls | grep --color=auto"

light_green="\e[0;32m"
light_brown="\e[0;33m"
light_red="\e[;31m"
color_end="\e[m"
idk="\e[1;31m\]"
export PS1="\[$light_green\][\t]\[$color_end\] \[$light_brown\]\u@\h\[$color_end\] \[$light_red\]\w>\[$color_end\] "
eval `dircolors`
export EDITOR=vim


