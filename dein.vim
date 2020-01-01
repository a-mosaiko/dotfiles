if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
let $DEIN_PATH=expand('$HOME/.vim/dein')
set runtimepath+=$DEIN_PATH/repos/github.com/Shougo/dein.vim
echo "[dein]DEIN_PATH:"$DEIN_PATH

" Required:
if dein#load_state($DEIN_PATH)
  call dein#begin($DEIN_PATH)

  " Let dein manage dein
  " Required:
  call dein#add('$DEIN_PATH/repos/github.com/Shougo/dein.vim')

  let s:toml = $DEIN_PATH . '/dein.toml'
  let s:lazy_toml = $DEIN_PATH . '/dein_lazy.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  echo "[dein]Some module needs to install."
  call dein#install()
endif

"End dein Scripts-------------------------

