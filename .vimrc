
" ########## General ########## "
" {{{
"---keys---"
"nmap ,,v :source $MYVIMRC<CR>
"nmap ,v :vs $HOME/.vim/.vimrc<CR>

"---Encoding---"
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

"---Cursor---"
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    " let &t_SR .= "\e[4 q"
endif

"---Search---"
set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase  " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch  " 検索文字列入力時に順次対象文字列にヒットさせる
set wrapscan   " 検索時に最後まで行ったら最初に戻る
set hlsearch   " 検索語をハイライト表示
" ESC連打でハイライト解除
nnoremap <ESC><ESC> :nohlsearch<CR>

"---変更記録の永続化 ---"
set undodir=~/.vim/.vim_undo
set undofile

"--- folding ---"
"折り畳み状態の保存
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"## manual
"shift+vで選択してzfで閉じるか, :開始行, 終了行 fo のコマンドで折り畳みができる
set foldmethod=manual

"## indent
set foldmethod=indent
set foldlevel=1        "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=0       "左端に折りたたみ状態を表示する領域を追加する

"## marker
"set foldmethod=marker
"set foldmarker={{{,}}}


"---modeline---"
"モードラインの有効化, ファイルの一行目からそのファイル特有のvim設定を読み出す
"set modeline " 何故か機能しないため保留
" 3行目までをモードラインとして検索する
"set modelines=3

"---indent---"
set expandtab    "tabの代わりに半角スペース
set tabstop=4    "tab長さ
set shiftwidth=4 "インデントの大きさ
set noautoindent "自動indentのオフ
"tab文字と行末半角スペースの表示"
set list listchars=tab:>\ ,trail:·
"逆tabの設定
inoremap <S-tab> <C-d> 

"---diffsplit---"
set diffopt+=vertical


"---Others---"
" 行が表示しきれないとき折り返し
set wrap

" 括弧入力時の対応する括弧を表示
set showmatch

" 行末の1文字先までカーソルを移動できるように"
set virtualedit=onemore
noremap <End> <End><right>

" yyをクリップボードにコピー
set clipboard=unnamedplus

" コマンドラインの補完
set wildmode=list:longest

"backspaceの使用
set backspace=indent,eol,start

"画面をスクロールする高さ(常にカーソルがウインドウの中心に来るよう9999に設定)
set scrolloff=9999

" }}}
" ########################################################

" ########## Visual ########## "
" {{{
" シンタックスハイライトの有効化 
syntax enable

colorscheme desert
"---ColomnNumber---"
set number
autocmd ColorScheme * hi LineNr ctermfg=244 ctermbg=234 

"---CursorLine---"
set cursorline
autocmd ColorScheme * hi CursorLine cterm=none ctermbg=235
autocmd ColorScheme * hi CursorLineNr cterm=none ctermfg=202 ctermbg=235 

"---CoursorColumn---"
set cursorcolumn
autocmd ColorScheme * hi CursorColumn cterm=none ctermbg=235

"---Color---"
autocmd ColorScheme * hi Normal ctermfg=253
autocmd ColorScheme * hi Comment ctermfg=66
autocmd ColorScheme * hi Statement ctermfg=130
autocmd ColorScheme * hi Type ctermfg=74
autocmd ColorScheme * hi Constant ctermfg=131
autocmd ColorScheme * hi Search ctermfg=232 ctermbg=130
autocmd ColorScheme * hi Nontext ctermfg=235
autocmd ColorScheme * hi SpecialKey ctermfg=59
autocmd ColorScheme * hi Special ctermfg=96
autocmd ColorScheme * hi Identifier ctermfg=31
autocmd ColorScheme * hi PreProc ctermfg=68

"---diff--"
"1:全く違うline, 2:1と同じ, 3:一部違う
autocmd ColorScheme * hi DiffAdd    cterm=bold ctermbg=238
autocmd ColorScheme * hi DiffDelete cterm=bold ctermbg=95
autocmd ColorScheme * hi DiffChange cterm=bold ctermbg=233
autocmd ColorScheme * hi DiffText   cterm=bold ctermfg=166 ctermbg=60

" }}}
" ########################################################

" ########## Keymap ########## "
" {{{

"---visual-insert---"
inoremap <C-v> <ESC><right><C-v>

"---特殊文字---"
nnoremap <C-@> :digraphs<CR>
inoremap <C-@> <C-k>

"---移動関連---"
inoremap <C-h>  <left>
inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-l>  <right>
nnoremap <S-h>  <Home>
nnoremap <S-l>  <End><right>

"---vsモードでの挙動---"
nnoremap <C-n> <C-w><C-w> 
inoremap <C-n> <ESC><C-w><C-w>

"---括弧補完---"
inoremap {{ {}<Left>
inoremap [[ []<Left>
inoremap (( ()<Left>
inoremap << <><Left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap $$ $$<Left>
inoremap `` ``<Left>

"---日本語---"
set imdisable
nnoremap い i
nnoremap う u
nnoremap ：ｗｑ :wq<CR>
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>i
vnoremap <F2> <ESC>:w<CR>

" }}}
" ########################################################


"--- 拡張機能 ---"
"set runtimepath+=$HOME/.vim/pack/
"runtime Hilight_info.vim
"runtime split.vim
"runtime dein_init.vim

"---filetype---"
"filetype plugin on
"filetype plugin indent on
"autocmd BufRead,BufNewFile *.py  set filetype=python
"autocmd BufRead,BufNewFile *.tex set filetype=tex
"autocmd BufRead,BufNewFile *.sh  set filetype=bash

let g:tex_flavor='latex'
let @u='/^\\begin{comment}:s /\\begin{comment}/%\\begin{comment}//^\\end{comment}:s /\\end{comment}/%\\end{comment}/?^\\begin{comment}:noh'
let @c='/^%\\begin{comment}:s /%\\begin{comment}/\\begin{comment}//^%\\end{comment}:s /%\\end{comment}/\\end{comment}/?^\\begin{comment}:noh'

"let g:eskk#large_dictionary = {
"\ 'path': "~/.vim/.dict/SKK-JISYO.utf8.L",
"\ 'sorted': 1,
"\ 'encoding': 'utf-8',
"\}

