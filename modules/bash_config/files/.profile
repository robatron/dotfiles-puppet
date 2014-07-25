# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# enable 256-color support in terminal
TERM=xterm-256color

# enable color support a few common commands
alias ls='ls -G'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

# Environment
# -----------

export EDITOR='vim'

# Aliases
# -------

# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# dotfiles
alias dotfiles-apply='~/.dotfiles/apply.sh'

# meta
alias bashrc-refresh='. ~/.bashrc'
alias bashrc-edit='\
    vim ~/.dotfiles/modules/bash_config/files/.bashrc &&\
    dotfiles-apply &&\
    bashrc-refresh'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gd="git diff"
alias gp="git push"
alias gb="git branch"
alias gl="git log"
