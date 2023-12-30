" ############################ "
" ########## Visual ########## "
" ############################ "
nmap .v :source $MYVIMRC<CR>
nmap ,v :vs $HOME/.vim/.vimrc<CR>

"---ColomnNumber---"
set number
autocmd ColorScheme * hi LineNr ctermfg=244 ctermbg=234 

"---CursorLine---"
set cursorline
autocmd ColorScheme * hi CursorLine cterm=none ctermbg=235
autocmd ColorScheme * hi CursorLineNr cterm=none ctermfg=202 ctermbg=235 

"---CoursorColumn---"
"set cursorcolumn"

"---Color---"
colorscheme desert
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

"########################################################

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

"---Search--- "

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch

" 検索時に最後まで行ったら最初に戻る
set wrapscan

" 検索語をハイライト表示
set hlsearch


"--- fold ---"
set foldmethod=manual  "折りたたみ範囲の判断基準（デフォルト: manual）
"shift+vで選択してzfで閉じるか, :開始行, 終了行 fo のコマンドで折り畳みができる
set foldlevel=1000        "ファイルを開いたときにデフォルトで折りたたむレベル
"set foldcolumn=       "左端に折りたたみ状態を表示する領域を追加する
set diffopt+=vertical


"--- tab ---"
"tabの代わりに半角スペース"
set expandtab

"tab長さ"
set tabstop=4

"逆tabの設定"
inoremap <S-tab> <C-d>
set shiftwidth=4

"tab文字と行末半角スペースの表示"
set list listchars=tab:>\ ,trail:·


"---Others---"

" 括弧入力時の対応する括弧を表示
set showmatch

" 行末の1文字先までカーソルを移動できるように"
set virtualedit=onemore
noremap <End> <End><right>

" yyをクリップボードにコピー
set clipboard+=unnamed

" コマンドラインの補完
set wildmode=list:longest

" シンタックスハイライトの有効化 
syntax enable

"backspaceの使用
set backspace=indent,eol,start


set scrolloff=9999


" ############################ "
" ########## Keymap ########## "
" ############################ "

" ESC連打でハイライト解除
nnoremap <ESC><ESC> :nohlsearch<CR>

"visual-insert
inoremap <C-v> <ESC><right><C-v>
inoremap <C-v> <ESC><right><C-v>

"undo redo
inoremap <A-u> <ESC>ui
inoremap <A-r> <ESC><C-r>i
vnoremap <A-u> <ESC>u
vnoremap <A-r> <ESC><C-r>

"copy, paste, delete
inoremap <A-p> <ESC>pi
inoremap <A-d> <ESC><S-d>i
inoremap <A-y> <ESC>yy

" 移動関連"
inoremap <C-h>    <left>
inoremap <C-j>    <down>
inoremap <C-k>    <up>
inoremap <C-l>    <right>
nnoremap h b
nnoremap l w
nnoremap k <up><up><up><up><up>
nnoremap j <down><down><down><down><down>
nnoremap <C-h> <home>
nnoremap <C-l> <end>
inoremap <C-j>    <down>
inoremap <C-k>    <up>

nnoremap <C-n> <C-w><C-w> 
inoremap <C-n> <ESC><C-w><C-w>
"noremap l <End><right>i
"noremap h <Home>i

inoremap <C-up>    <up><up><up><up><up><up>
inoremap <C-down>  <down><down><down><down><down><down>
inoremap <C-right> <ESC>wwi
inoremap <C-left>  <ESC>bi
vnoremap <C-right> w
vnoremap <C-left>  b

nnoremap <C-up>    <up><up><up><up><up>
noremap  <C-down>  <down><down><down><down><down>
nnoremap <right> w
nnoremap <left>  b
nnoremap <C-right> <right>
nnoremap <C-left>  <left>

nnoremap <C-up>    <up><up><up><up><up>
noremap  <C-down>  <down><down><down><down><down>
nnoremap <right> w
nnoremap <left>  b
nnoremap <C-right> <right>
nnoremap <C-left>  <left>

nnoremap .    <down><down><down><down><down>
nnoremap ,    <up><up><up><up><up>
"nnoremap .  <C-}>
"nnoremap ,  <C-{>
vnoremap .  <C-}>
vnoremap ,  <C-{>
inoremap <C-.>  <ESC><C-}>
inoremap <C-,>  <ESC><C-{>

"対のカッコに移動"
nnoremap @@  %
inoremap @@  <ESC>%i
vnoremap @@  %

"変更履歴をたどる"
"nnoremap -  g;
"nnoremap ^  g,

"inoremap \\  <right><ESC>Wi
"inoremap //  <ESC>Bi
"nnoremap <CR>  I<End><right><CR><ESC>
"nnoremap <BS>  I<BS><ESC><right>

" 括弧補完"
inoremap {{ {}<Left>
inoremap [[ []<Left>
inoremap (( ()<Left>
inoremap << <><Left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap $$ $$<Left>
inoremap `` ``<Left>

"区切り"
inoremap ==<CR> =====  =====<left><left><left><left><left><left>
inoremap ===<CR> ====================

" latex "
set imdisable
nnoremap い i
nnoremap う u
nnoremap ：ｗｑ :wq<CR>
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>i
vnoremap <F2> <ESC>:w<CR>

"--- 拡張機能 ---"
set runtimepath+=$HOME/.vim/plugin
runtime Hilight_info.vim
runtime split.vim

"---filetype---"
filetype plugin indent on
autocmd BufRead,BufNewFile *.py  set filetype=python
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.sh  set filetype=bash


