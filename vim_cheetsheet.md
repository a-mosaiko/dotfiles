# Vim 個人環境ドキュメント

## Leader
* default: \
* let mapleader = "\<Space>"

## 基本操作
* split window / tab window
  - `:split`: 水平分割
  - `:vsplit`: 垂直分割
  - `<C-w>=`: 大きさを揃える
  - `<C-w>>`, `<C-w><`: 幅の増減
  - `<C-w>+`, `<C-w>-`: 高さの増減
  - `:tabnew`: 新規タブ
  - `gt`, `gT`: タブ移動


## プラグインの使用方法
* LSP
  * LSPインストール
    - `:LspInstallServer`: 現環境にLspServerを自動インストール&有効化
  * ファイル診断
    - `<Leader>fc`, `:LspDocumentDiagnostics`: ファイル診断
    - `<Leader>n`, `:LspNextError`: LspDocumentDiagnosticsの次のエラーへ
    - `<Leader>p`, `:LspPreviousError`: LspDocumentDiagnosticsの前のエラーへ
    - `<Leader>fr`, `:LspDocumentFormat`: フォーマット修正
    - `<Leader>fR`, `:LspDocumentRangeFormat`: 選択範囲のフォーマット修正
  * ジャンプ
    - `<Leader>dc`, `:LspDeclaration`: 宣言場所へのジャンプ(for C`, `C++`, `...)
    - `<Leader>df`, `<C-]>`, `:LspDefinition`: 定義場所へのジャンプ
    - `<Leader>dt`, `:LspTypeDefinition`: シンボルの型の定義場所へのジャンプ
  * リスト取得/検索
    - `<Leader>li`, `:LspImplementation`: インターフェース実装の一覧を表示
    - `<Leader>ls`, `:LspDocumentSymbol`: ドキュメント内シンボルの表示
    - `<Leader>lS`, `:LspWorkLeaderSymbol`: Workspace全体でシンボル検索(import先なども検索)
    - `<Leader>lr`, `:LspReferences`: シンボルの参照
  * その他
    - `<Leader>sn`, `:LspRename`: シンボルのリネーム(関連する呼び出しも)
    - `<C-k>`, `<Leader>k`, `:LspHover`: シンボル情報をホバー表示
    - `:LspStatus`: サーバ状態の表示

* Quickrun
  - `<Leader>r`: run!

* NERDCOMMENTER
  - `<Leader>c<space>`: comment out

* Neosnippet
  - .vim/snippets/

* bufkill
  - `<Leader>bd`: delete buffer and keep the window/split intact
  - `<Leader>bw`: wipe buffer and keep the window/split intact
  - `<Leader>bun`: unload buffer and keep the window/split intact

* 翻訳
  - `:Translate`: カーソル行
  - `:'<,'>Translate`: 選択範囲

* ブラウザ
  - `:W3M [search keyword]`: search

* vim-markdown
  - `zr`: reduces fold level throughout the buffer
  - `zR`: opens all folds
  - `zm`: increases fold level throughout the buffer
  - `zM`: folds everything all the way
  - `za`: open a fold your cursor is on
  - `zA`: open a fold your cursor is on recursively
  - `zc`: close a fold your cursor is on
  - `zC`: close a fold your cursor is on recursively

* Markdown preview
  - `:PrevimOpen`: open




