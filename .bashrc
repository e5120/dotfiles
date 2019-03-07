
# source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# user specific aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# user specific functions
# PS1='\u:\W\$'
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u:\W\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u:\W\[\033[00m\]\\$ "
fi
