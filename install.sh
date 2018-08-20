#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
echo $THIS_DIR


cd $(git rev-parse --show-toplevel)

git submodule init
git submodule update
cd -

echo "start setup..."
for f in .??*; do
  #skip list
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitconfig.local.template" ] && continue
  [ "$f" = ".require_oh-my-zsh" ] && continue
  [ "$f" = ".gitmodules" ] && continue
  
  ln -snfv ~/dotfiles/"$f" ~/$f
done

if [ -e ~/.gitconfig.local ] ;then
  cp ~/dotfiles/.gitconfig.local.template ~/.gitconfig.local
fi
# emacs set up
#if which cask >/dev/null 2>&1; then
#echo "setup .emacs.d..."
#cd ${THIS_DIR}/.emacs.d
#cask upgrade
#cask install
#fi

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
