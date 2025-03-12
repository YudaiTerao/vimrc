

" ########## General ########## "
" {{{
"---folding---"
"## foldmethod: marker ##
setlocal foldmethod=indent
setlocal foldlevel=1        "ファイルを開いたときにデフォルトで折りたたむレベル

"## foldmethod: syntax ##
"syntaxで折り畳みができるらしいがなんか上手くいかない
"set foldmethod=syntax
"let g:tex_fold_enabled=1

"---indent---"
setlocal expandtab    "tabの代わりに半角スペース
setlocal tabstop=4    "tab長さ
setlocal shiftwidth=4 "インデントの大きさ
setlocal autoindent "自動indentのオン
"setlocal noautoindent "自動indentのオフ
"setlocal nosmartindent
"setlocal nocindent
"setlocal nosmarttab
"setlocal indentexpr=
"setlocal indentkeys=
"" マルチバイト文字対応
"set formatoptions=tmM
"set textwidth=100

"--- spell check ---"
"let g:tex_nospell=1          "スペルチェックの無効化
let g:tex_comment_nospell= 1  "コメント内でのスペルチェックの無効化

"--- syntax ---"

" }}}
" ########################################################

" ########## Keymap ########## "
" {{{
inoremap class<CR>    class ():<left><left><left>
inoremap def<CR>      
\def (<CR>
\self,<CR>
\ <CR>
\):<up>   <left><left><left><left>
\<up><tab><left><left><left><left>
\<up><right><right><right><right>
inoremap doc<CR>      
\"""<CR>
\Usage:<CR>
\.py<CR><CR>
\Options:<CR>
\<CR>
\"""<CR>
\from docopt import docopt<up><up><up><up><up><home><tab>

" }}}
" ########################################################

" ########## Command ########## "
" {{{
" }}}
" ########################################################

" ########## Package ########## "
" {{{
" }}}
" ########################################################

