# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

export LANG=ja_JP.UTF-8

if [ -f ~/.bashrcp ]; then
  . ~/.bashrcp
fi
