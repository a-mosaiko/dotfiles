" vimproc
"let g:vimproc_dll_path = $HOME . '/.vim/bundle/vimproc/autoload/vimproc.dll'
"let g:vimproc_dll_path = $HOME . '/.vim/dein/repos/github.com/Shougo/vimproc/lib'
let g:vimproc_dll_path = $HOME . '/.vim/dein/repos/github.com/Shougo/vimproc/lib/vimproc_mac.so'

" vim-lsp
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')
let g:asyncomplete_log_file = expand('~/asyncomplete.log')

let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}

function! s:configure_lsp() abort
  setlocal omnifunc=lsp#complete   " オムニ補完を有効化
  " LspCodeAction	Gets a list of possible commands that can be applied to a file so it can be fixed (quick fix)
  " LspDeclaration	Go to declaration
  nnoremap <buffer> <Leader> dc :<C-u>LspDeclaration<CR>
  " LspDefinition	Go to definition
  nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
  nnoremap <buffer> <Leader> df :<C-u>LspDefinition<CR>
  " LspDocumentDiagnostics	Get current document diagnostics information
  nnoremap <buffer> <Leader> fc :<C-u>LspDocumentDiagnostics<CR>
  " LspDocumentFormat	Format entire document
  nnoremap <buffer> <Leader> fr :<C-u>LspDocumentFormat<CR>
  " LspDocumentRangeFormat	Format document selection
  vnoremap <buffer> <Leader> fR :LspDocumentRangeFormat<CR>
  " LspDocumentSymbol	Show document symbols
  nnoremap <buffer> <Leader> ls :<C-u>LspDocumentSymbol<CR>
  " LspHover	Show hover information
  nnoremap <buffer> <C-k> :<C-u>LspHover<CR>
  nnoremap <buffer> <Leader> k :<C-u>LspHover<CR>
  " LspImplementation	Show implementation of interface
  nnoremap <buffer> <Leader> li :<C-u>LspImplementation<CR>
  " LspNextError	jump to next error
  nnoremap <buffer> <Leader> n :<C-u>LspNextError<CR>
  " LspPreviousError	jump to previous error
  nnoremap <buffer> <Leader> p :<C-u>LspPreviousError<CR>
  " LspReferences	Find references
  nnoremap <buffer> <Leader> lr :<C-u>LspReferences<CR>
  " LspRename	Rename symbol
  nnoremap <buffer> <Leader> rn :<C-u>LspRename<CR>
  " LspTypeDefinition	Go to type definition
  nnoremap <buffer> <Leader> dt :<C-u>LspTypeDefinition<CR>
  " LspWorkLeaderSymbol	Search/Show workLeader symbol
  nnoremap <buffer> <Leader> s :<C-u>LspWorkLeaderSymbol<CR>
  " LspStatus	Show the status of the language server
endfunction

" Deopelate: パッケージ管理
"if dein#tap('deoplete.nvim')
"  let g:deoplete#enable_at_startup = 1 
"endif

" ALE: 非同期コードチェック
" 保存時のみ実行する
"let g:ale_lint_on_text_changed = 0
" 表示に関する設定
"let g:ale_sign_error = '！'
"let g:ale_sign_warning = '？'

" Airline: ステータスバー改良
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = '！ '
let g:airline#extensions#ale#warning_symbol = '？ '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whiteLeader#enabled = 1

" Indentline: インデントの可視化
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#708090'

" Neosnippet
let g:neosnippet#snippets_directory=$HOME.'/.vim/snippets'
"nnoremap <silent> <Leader>es :<C-u>NeoSnippetEdit<CR>
"<C-k>は辞書補完と衝突するので注意
"imap <C-k> <Plug>(neosnippet_expand_or_jump)
"smap <C-k> <Plug>(neosnippet_expand_or_jump)

" Color scheme Jelly beans
colorscheme jellybeans

" The NERD Commenter
let g:NERDSpaceDelims=1

" unite.vim
"nnoremap <silent> <Leader>uu :<C-u>Unite buffer file_mru file/new<CR>
"nnoremap <silent> <Leader>uf :<C-u>UniteWithBufferDir file file/new<CR>
"nnoremap <silent> <Leader>us :<C-u>Unite snippet<CR>
"nnoremap <silent> <Leader>uo :<C-u>Unite outline<CR>
"nnoremap <silent> <Leader>ur :<C-u>Unite register<CR>
"let g:unite_enable_start_insert = 1

" Bufkill: delete buffer with keeping split
nnoremap <silent> <Leader>bd :<C-u>:BD<CR>
nnoremap <silent> <Leader>bw :<C-u>:BW<CR>
nnoremap <silent> <Leader>bun :<C-u>:BUN<CR>

" vim-markdown
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0

" PrevimOpen 
"let g:previm_open_cmd = 'open -a Safari'
let g:previm_open_cmd = 'open -a "Google Chrome"'
" Githubに近いCSSを使用
let g:previm_disable_default_css = 1
let g:previm_custom_css_path = '~/.vim/templates/css/markdown.css'

" Google翻訳
"https://qiita.com/gorilla0513/items/37c80569ff8f3a1c721c
" 翻訳元言語
let g:translate_source = 'ja'
" 翻訳先言語
let g:translate_target = 'en'
" 翻訳結果ウィンドウのサイズ
let g:translate_winsize = 5

" W3M.vim
let g:w3m#homepage = 'http://www.google.com'
" デフォルトのサーチエンジンをyahooからgoogleに
let g:w3m#search_engine = 'http://search.yahoo.co.jp/search?search.x=1&fr=top_ga1_sa_124&tid=top_ga1_sa_124&ei=' . &encoding . '&aq=&oq=&p=%s'
"let g:w3m#search_engine = 'http://www.google.com/search?ie=' . &encoding . '&q=%s'

" Cheatsheet
let g:cheatsheet#cheat_file = '$HOME/.vim/vim_cheetsheet.md'

" Quick run
"let g:quickrun_config['slim'] = {'command' : 'slimrb', 'exec' : ['%c -p %s']}
let g:quickrun_config = {
            \   "_" : {
            \   "outputter":"message",
            \   }
            \}
"map <C-e> :<C-u>QuickRun<CR>
"map <Leader>r " default


