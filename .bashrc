# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -al'
alias :q='exit'
alias :g='grep -r --exclude=tags'
alias :gi='grep -ri --exclude=tags'
