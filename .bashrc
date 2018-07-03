
# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# user specific aliases and functions
# PS1='\u:\W\$'
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u:\W\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u:\W\[\033[00m\]\\$ "
fi

alias ls='ls -F'
alias la='ls -a -F'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
