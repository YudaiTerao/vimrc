" ############################ "
" ########## Visual ########## "
" ############################ "
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

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
colorscheme desert

"---diff--"
"1:全く違うline, 2:1と同じ, 3:一部違う
autocmd ColorScheme * hi DiffAdd    cterm=bold ctermbg=238
autocmd ColorScheme * hi DiffDelete cterm=bold ctermbg=95
autocmd ColorScheme * hi DiffChange cterm=bold ctermbg=233
autocmd ColorScheme * hi DiffText   cterm=bold ctermfg=166 ctermbg=60

if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[2 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    " let &t_SR .= "\e[4 q"
endif


" ############################ "
" ########## Search ########## "
" ############################ "
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

" ESC連打でハイライト解除
nnoremap <ESC><ESC> :nohlsearch<CR>

" 移動関連"
nnoremap <C-n> <C-w><C-w> 
inoremap <C-n> <ESC><C-w><C-w>
"noremap l <End><right>i
"noremap h <Home>i

nnoremap >  <C-d>
nnoremap <  <C-u>
nnoremap .  <C-}>
nnoremap ,  <C-{>
vnoremap >  <C-d>
vnoremap <  <C-u>
vnoremap .  <C-}>
vnoremap ,  <C-{>
inoremap >>  <ESC><C-d>
inoremap <<  <ESC><C-u>
inoremap ..  <ESC><C-}>
inoremap ,,  <ESC><C-{>


nnoremap <CR>  I<End><right><CR><ESC>
nnoremap <BS>  I<BS><ESC><right>

nnoremap @@  %
inoremap @@  <ESC>%i
vnoremap @@  %

nnoremap -  g;
nnoremap ^  g,

inoremap \\  <right><ESC>Wi
inoremap //  <ESC>Bi

" 括弧補完"
inoremap {{ {}<Left>
inoremap [[ []<Left>
inoremap (( ()<Left>
inoremap << <><Left>
inoremap "" ""<left>
inoremap '' ''<left>
inoremap ""<CR> ""<right>
inoremap '<CR> ''<right>
inoremap {<CR> {}<Left><CR><ESC><S-o>
inoremap [<CR> []<Left><CR><ESC><S-o>
inoremap (<CR> ()<Left><CR><ESC><S-o>)

set expandtab
set tabstop=4
set shiftwidth=4
set list listchars=tab:>\ ,trail:·

source $HOME/.vim/Hilight_info.vim
source $HOME/.vim/split.vim

" 折りたたみ関連
set foldmethod=manual  "折りたたみ範囲の判断基準（デフォルト: manual）
"shift+vで選択してzfで閉じるか, :開始行, 終了行 fo のコマンドで折り畳みができる
set foldlevel=1000        "ファイルを開いたときにデフォルトで折りたたむレベル
"set foldcolumn=       "左端に折りたたみ状態を表示する領域を追加する

set diffopt+=vertical


