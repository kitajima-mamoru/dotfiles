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
  
  ln -snfv $THIS_DIR/"$f" ~/$f
done
set -x
if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi
ln -snfv $THIS_DIR/vimrc ~/.vim/vimrc
if [ ! -e ~/.vim/rc ]; then
  mkdir ~/.vim/rc
fi
if [ ! -e ~/.vim/rc/pri ]; then
  mkdir ~/.vim/rc/pri
fi
if [ ! -e ~/.vim/undo ]; then
  mkdir ~/.vim/undo
fi
if [ ! -e ~/.vim/.session ]; then
  touch ~/.vim/.session
fi
if [ -e ~/.vim/rc/init ]; then
  rm ~/.vim/rc/init -rf
fi
ln -snfv $THIS_DIR/rc/init ~/.vim/rc/
cp $THIS_DIR/rc/pri ~/.vim/rc/ -rf
#各種バンドルインストール

set +x

if [ $# -ne 0 ]; then
  exit 1
fi
if [ -e ~/.vim/bundle/unite ]; then
        rm ~/.vim/bundle/unite -rf
fi
git clone git@github.com:Shougo/unite.vim.git ~/.vim/bundle/unite

if [ -e ~/.vim/bundle/nerdtree ]; then
        rm ~/.vim/bundle/nerdtree -rf
fi
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

if [ -e ~/.vim/bundle/vim-colorschemes ]; then
        rm ~/.vim/bundle/vim-colorschemes -rf
fi
git clone git@github.com:flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes

if [ -e ~/.vim/bundle/winresizer ]; then
        rm ~/.vim/bundle/winresizer -rf
fi
git clone git@github.com:simeji/winresizer.git ~/.vim/bundle/winresizer

if [ -e ~/.vim/bundle/unite-colorschemes ]; then
        rm ~/.vim/bundle/unite-colorschemes -rf
fi
git clone git@github.com:ujihisa/unite-colorscheme.git ~/.vim/bundle/unite-colorschemes

curl --create-dirs -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln -snfv ~/.vim/bundle/vim-colorschemes/colors ~/.vim/

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
