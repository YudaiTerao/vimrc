
" ########## General ########## "
" {{{
"--- folding ---"
"## marker
set foldmethod=marker
set foldmarker={{{,}}}
set foldlevel=0        "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=0       "左端に折りたたみ状態を表示する領域を追加する

"--- indent ---"
set expandtab    "tabの代わりに半角スペース
set tabstop=2    "tab長さ
set shiftwidth=2 "インデントの大きさ
set noautoindent "自動indentのオフ

"" マルチバイト文字対応
"set formatoptions=tmM
"set textwidth=100
" }}}
" ########################################################

" ########## Keymaps ##########
" {{{
inoremap \cm " {{{
inoremap \ecm " }}}
inoremap \##  " ##########  ##########<left><left><left><left><left><left><left><left><left><left><left>
inoremap \==  " ########################################################
inoremap \--  "---  ---"<left><left><left><left><left>
" }}}
" ########################################################

