# How to install
`cd $HOME`

`git clone git@github.com:kitajima-mamoru/dotfiles.git`

`cd dotfiles`

`./install.sh 1`

# Lint
## install
`pip install --pre vim-vint`

## lint
`vint ./`

# etc
* rc/以下はvimrc置き場
initとpri以下の.vimファイルを全部読むようになっているので配置だけでOK
priはprivateの意味。sample.vim以外はgit管理されないので、サーバーごとに必要なvimscriptはrc/pri/以下に置く
