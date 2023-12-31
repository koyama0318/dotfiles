" Vimの基本設定
syntax enable          " 構文ハイライトを有効にする
set number             " 行番号を表示する
set tabstop=4          " タブの幅を4にする
set shiftwidth=4       " インデントの幅を4にする
set expandtab          " タブ文字をスペースに展開する
set smartindent        " スマートなインデントを有効にする

" カラースキームの設定（任意のものを選択）
colorscheme desert

" ファイルタイプによる設定
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2

" キーマッピング
nnoremap <C-h> <C-w>h       " Ctrl + h で左のウィンドウに移動
nnoremap <C-j> <C-w>j       " Ctrl + j で下のウィンドウに移動
nnoremap <C-k> <C-w>k       " Ctrl + k で上のウィンドウに移動
nnoremap <C-l> <C-w>l       " Ctrl + l で右のウィンドウに移動

" プラグインの設定（例：NERDTreeを使用する場合）
" プラグインをインストールした場合、そのプラグインに対する設定をここに追加

" その他の設定
set mouse=a              " マウスを有効にする
set clipboard=unnamedplus " システムクリップボードを有効にする