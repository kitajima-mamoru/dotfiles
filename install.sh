#!/bin/bash

set -u

# 無ければ作る
function makeDirectory() {
  [ ! -e $1 ] && mkdir $1
}

# 有れば削除
function deleteDirectory() {
  [ -e $1 ] && rm $1 -rf
}

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
echo $THIS_DIR

cd $(git rev-parse --show-toplevel)

git submodule init
git submodule update
cd -

echo "start setup..."
cd src
for f in .??*; do
  ln -snfv $THIS_DIR/src/"$f" ~/$f
done
cd -

set -x
for dirname in ~/.vim ~/.vim/rc ~/.vim/rc/pri ~/.vim/undo ~/.vim/syntax ~/.vim/session; do
 makeDirectory $dirname
done

deleteDirectory ~/.vim/rc/init
ln -snfv $THIS_DIR/vimrc ~/.vim/vimrc
ln -snfv $THIS_DIR/rc/init ~/.vim/rc/
cp $THIS_DIR/rc/pri ~/.vim/rc/ -rf

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
set +x

if [ ! $# -ne 0 ]; then
  cat << END

**************************************************
FINISHED! bye.(exclude ~/.vim/bundle)
**************************************************

END
exit 1
fi

#各種バンドルインストール
if [ ! -e ~/.vim/syntax/jinja.vim ]; then
  wget -O ~/.vim/syntax/jinja.vim http://www.vim.org/scripts/download_script.php?src_id=8666
fi

if [ ! -e ~/.vim/syntax/twig.vim ]; then
  wget -O ~/.vim/syntax/twig.vim http://www.vim.org/scripts/download_script.php?src_id=6961
fi

if [ ! -e ~/.vim/syntax/typescript.vim ]; then
  curl https://raw.githubusercontent.com/leafgarland/typescript-vim/master/syntax/typescript.vim > ~/.vim/syntax/typescript.vim
fi

if [ ! -e ~/.vim/syntax/plantuml.vim ]; then
  curl https://raw.githubusercontent.com/aklt/plantuml-syntax/master/syntax/plantuml.vim > ~/.vim/syntax/plantuml.vim
fi

deleteDirectory ~/.vim/bundle/unite
git clone git@github.com:Shougo/unite.vim.git ~/.vim/bundle/unite

deleteDirectory ~/.vim/bundle/nerdtree
git clone git@github.com:scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

deleteDirectory ~/.vim/bundle/vim-colorschemes
git clone git@github.com:flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes

deleteDirectory ~/.vim/bundle/winresizer
git clone git@github.com:simeji/winresizer.git ~/.vim/bundle/winresizer

deleteDirectory ~/.vim/bundle/unite-colorschemes
git clone git@github.com:ujihisa/unite-colorscheme.git ~/.vim/bundle/unite-colorschemes

curl --create-dirs -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
ln -snfv ~/.vim/bundle/vim-colorschemes/colors ~/.vim/

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
