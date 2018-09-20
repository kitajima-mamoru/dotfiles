# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
alias ll='ls -al'
alias :q='exit'
alias :g='grep -r --exclude=tags'
alias :gi='grep -ri --exclude=tags'
alias cldots='cd ~ && rm dotfiles -rf && git clone git@github.com:kitajima-mamoru/dotfiles.git'
