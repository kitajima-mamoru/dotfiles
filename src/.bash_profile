# .bash_profile
if [ -f ~/.bashrcp ]; then
  . ~/.bashrcp
fi

# ホームディレクトリ下を優先する

PATH=$HOME/bin:$PATH

export PATH

export LANG=ja_JP.UTF-8

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
