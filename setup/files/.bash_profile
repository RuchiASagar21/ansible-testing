#
# ~/.bash_profile
#
export BASH_SILENCE_DEPRECATION_WARNING=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Alias definitions.
if [[ -f ~/.bash_aliases ]]; then
    printf "\nLocated ~/.bash_aliases, sourcing it\n"
    source ~/.bash_aliases
fi
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
for profile in ~/.bash_profile*; do
    #exclude this file itself, otherwise infinite recursion
    if ! [[ "$profile" == "/home/$USER/.bash_profile" ]]; then
        printf "\nLooking for [%s]" "$profile"
        if [[ -f "$profile" ]]; then
            printf "\nLoading %s" "$profile"
            source "$profile"
        fi
    fi
done

clear
