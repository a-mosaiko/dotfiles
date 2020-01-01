""" Don't modify this vimrc file! """
echo "### Startup Vimrc ###"

" Add a Local Runtimepath
if has('vim_starting')
  set runtimepath^=$HOME/.vim
endif

" Set Environment variable and Add a Runtimepath for Dropbox
let $SUBSTANCE_OF_VIM=expand('$HOME/.vim')

" - over write $SUBSTANCE_OF_VIM
if filereadable(expand('$HOME/env.vim'))
  source $HOME/env.vim
endif

" Settings should be done At First
if filereadable(expand('$SUBSTANCE_OF_VIM/first.vim'))
  source $SUBSTANCE_OF_VIM/first.vim
endif

" Settings for NeoBundle plugins
if filereadable(expand('$SUBSTANCE_OF_VIM/dein.vim'))
  source $SUBSTANCE_OF_VIM/dein.vim
endif

" Settings for NeoBundle plugins
if filereadable(expand('$SUBSTANCE_OF_VIM/plugin.vim'))
  source $SUBSTANCE_OF_VIM/plugin.vim
endif

" Basic Settings
if filereadable(expand('$SUBSTANCE_OF_VIM/basic.vim'))
  source $SUBSTANCE_OF_VIM/basic.vim
endif

" Settings should be done After All
if filereadable(expand('$SUBSTANCE_OF_VIM/finaly.vim'))
  source $SUBSTANCE_OF_VIM/finaly.vim
endif

echo "[vimrc]All scripts completed."

