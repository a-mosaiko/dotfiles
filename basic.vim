" スワップファイルを作成しない
set noswapfile

" modeline
"set modeline
"set modelines=5

" 表示関係
"set t_Co=256
set number
"set laststatus=2
set ruler
"set hlsearch
"nohlsearch
"set fillchars=vert:\|
syntax on
"set ambiwidth=double

" tab 関係
set tabstop=2
set shiftwidth=2
set backspace=2
set autoindent
set smartindent
set expandtab

" set leader key
let mapleader = "\<Space>"

" color settings of popup menu"
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=8
hi PmenuSbar ctermbg=7
hi PmenuThumb ctermfg=84

" 編集関係
" 日本語の行を合成する際空白を挿入しない
"set formatoptions+=mM

" fold
set foldmethod=marker
set foldtext=FoldCCtext()
set foldlevelstart=20

" 行末のスペースを警告
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/
"autocmd WinEnter * match WhitespaceEOL /\s\+$/

" ファイルタイプ
"let g:filetype_m = 'objc'
"autocmd FileType php : set foldmethod=marker commentstring=<!--%s-->
"let g:tex_flavor='latex'
"-- その他は~/.vim/ftdetect/*.vim

" scanning"
"set nowrapscan
"set clipboard=unnamed
"set wildmenu
"set whichwrap=b,s,h,l,<,>,[,],~
"nnoremap j gj
"onoremap j gj
"xnoremap j gj
"nnoremap k gk
"onoremap k gk
"xnoremap k gk

" memorize previous cursor place
"if has("autocmd")
"    autocmd BufReadPost *
"    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"    \   exe "normal! g'\"" |
"    \ endif
"endif

" ctrl+n, ctrl+e perform checking syntax, execution in Perl and Ruby
"autocmd FileType perl :map <C-n> <ESC>:!perl -cw %<CR>
"autocmd FileType perl :map <C-e> <ESC>:!perl %<CR>
"autocmd FileType ruby :map <C-n> <ESC>:!ruby -cW %<CR>
"autocmd FileType ruby :map <C-e> <ESC>:!ruby %<CR>


" カーソル行,列を可視化
" -> 重いためコメントアウト
"set cursorcolumn
"set cursorline

" キーバインド
"imap <C-e> <END>
"imap <C-a> <HOME>
"imap <C-f> <Right>
"imap <C-b> <Left>
"nnoremap <silent> ,e. :<C-u>edit $MYVIMRC<CR>
"nnoremap <silent> ,ef :<C-u>call EditAfterFtDotVim()<CR>

