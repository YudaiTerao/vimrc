
" ########## General ########## "
" {{{
"---folding---"
"## foldmethod: marker ##
set foldmethod=marker
set foldmarker=%{{{,%}}}
set foldlevel=0        "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=0       "左端に折りたたみ状態を表示する領域を追加する
inoremap cm<CR> %{{{
inoremap ecm<CR> %}}}

"## foldmethod: syntax ##
"syntaxで折り畳みができるらしいがなんか上手くいかない
"set foldmethod=syntax
"let g:tex_fold_enabled=1

"---indent---"
setlocal expandtab    "tabの代わりに半角スペース
setlocal tabstop=2    "tab長さ
setlocal shiftwidth=2 "インデントの大きさ
setlocal noautoindent "自動indentのオフ
setlocal nosmartindent
setlocal nocindent
setlocal nosmarttab
setlocal indentexpr=
setlocal indentkeys=
"" マルチバイト文字対応
"set formatoptions=tmM
"set textwidth=100

"--- spell check ---"
"let g:tex_nospell=1          "スペルチェックの無効化
let g:tex_comment_nospell= 1  "コメント内でのスペルチェックの無効化

"--- syntax ---"
" 詳細は :h tex.vimでhelpを読む
" call TexNewMathZone(sfx,mathzone,starform)
call TexNewMathZone("M", "align", 1)    "alignがmathzoneとして認識されないため
call TexNewMathZone("N", "alignat", 1)  "alignがmathzoneとして認識されないため

" }}}
" ########################################################

" ########## Keymap ########## "
" {{{
"---My_dictionary---"
inoremap crfe     \ce{(CrFe)S2}
inoremap Mn3Al    \ce{Mn3Al}
inoremap CoMnN2   \ce{(CoMn)N2}
inoremap Co2MnGa  \ce{Co2MnGa}

"---reference---"
inoremap \ff   Fig.\ref{fig:}<left>
inoremap \tf   Table.\ref{table:}<left>
inoremap \ef   \eqref{eq:}式<left><left>
inoremap \cf   \cite{}<left><left>
inoremap \bf   \bibitem{}<left>

"---section---"
inoremap \beg     \begin{}<left>
inoremap \end     \end{}<left>
inoremap \cha     \chapter{}<left>
inoremap \sec     \section{}<left>
inoremap \subs    \subsection{}<left>
inoremap \doc     \begin{document}<CR> <BS><CR>\end{document}<UP>
inoremap \cm      \begin{coment}
inoremap \ecm     \end{coment}

"---equation, list---"
inoremap eq<CR>   \begin{equation}<CR> <BS><CR>\label{eq:}<CR>\end{equation}<UP><UP>
inoremap al<CR>   \begin{align}<CR> <BS><CR>\label{eq:}<CR>\end{align}<UP><UP>
inoremap alt<CR>  \begin{alignat}<CR> <BS><CR>\label{eq:}<CR>\end{alignat}<UP><UP>
inoremap sp<CR>   \begin{split}<CR> <BS><CR>\label{eq:}<CR>\end{split}<UP><UP>
inoremap al*<CR>  \begin{align*}<CR> <BS><CR>\end{align*}<UP><UP>
inoremap alt*<CR> \begin{alignat*}<CR> <BS><CR>\end{alignat*}<UP><UP>
inoremap eq*<CR>  \begin{equation*}<CR> <BS><CR>\end{equation*}<UP>
inoremap li<CR>   \begin{easylist}[itemize]<CR>@<CR>\end{easylist}<UP>
inoremap \non \nonumber

"inoremap ea<CR>  \begin{eqnarray}<CR> <BS><CR>\label{eq:}<CR>\end{eqnarray}<UP><UP>
"inoremap ea*<CR> \begin{eqnarray*}<CR> <BS><CR>\end{eqnarray*}<UP>

"---length---"
inoremap \lw \linewidth
inoremap \tw \textwidth
inoremap \vs \vspace{}<left>
inoremap \hs \hspace{}<left>

"---日本語---"
set imdisable
nnoremap い i
nnoremap う u
nnoremap ：ｗｑ :wq<CR>
nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>i
vnoremap <F2> <ESC>:w<CR>

"---templates---"
inoremap fig<CR> 
\\begin{figure}[H]<CR>
\  \centering<CR>
\  \captionsetup{width=0.9\linewidth, position=bottom,<CR>
\                margin={0.05\linewidth, 0.05\linewidth}, skip=0.05cm,<CR>
\                justification=centering, singlelinecheck=off,<CR>
\                format=plain, indention=8pt, labelsep=space<CR>
\                }<CR>
\<CR>
\  \caption{}<CR>
\  \label{fig:}<CR>
\\end{figure}<UP><UP><UP><tab>

inoremap tab<CR> 
\\begin{table}[H]<CR>
\  \centering<CR>
\  \captionsetup{width=0.9\linewidth, position=top,<CR>
\                margin={0.05\linewidth, 0.05\linewidth}, skip=0.05cm,<CR>
\                justification=centering, singlelinecheck=off,<CR>
\                format=plain, indention=8pt, labelsep=space<CR>
\                }<CR>
\<CR>
\  \caption{}<CR>
\  \label{table:}<CR><CR>
\\end{table}<UP><UP><UP><tab>

inoremap mini<CR> 
\%=====  =====<CR>
\  \fbox{<CR><C-d>
\  \begin{minipage}[H]{0.45\textwidth}<CR>
\    \centering<CR>
\    \subcaptionsetup{width=0.5\linewidth, position=top,<CR>
\                     margin={0.05\linewidth, 0.0\linewidth}, skip=0.02cm,<CR>
\                     justification=raggedright, singlelinecheck=off,<CR>
\                     format=plain, indention=8pt, labelsep=space<CR>
\                     }<CR>
\    \label{fig:}<CR>
\    \subcaption{}<CR>
\    \includegraphics[keepaspectratio, width=1.0\linewidth]{}<CR>
\    %\includegraphics[draft,keepaspectratio, width=1.0\linewidth]{}<CR>
\  \end{minipage}<CR> <BS>
\  }<CR>
\  %====================<UP><UP><UP><UP><UP><End><left>

inoremap tr<CR> 
\  \fbox{<CR><C-d>
\  \begin{tabular}{c}<CR>
\    \centering<CR><CR>
\    <CR><CR>
\  \end{tabular}<CR>
\  }<UP><UP><UP><UP><UP><UP><end><left>

" }}}
" ########################################################

" ########## Command ########## "
" {{{
"\begin{comment}を検索してcomment化したりcommentを外したりするコマンド"
"comment outを外すコマンド"
let @u='/^\\begin{comment}:s /\\begin{comment}/%\\begin{comment}//^\\end{comment}:s /\\end{comment}/%\\end{comment}/?^\\begin{comment}:noh'
"comment outのコマンド"
let @c='/^%\\begin{comment}:s /%\\begin{comment}/\\begin{comment}//^%\\end{comment}:s /%\\end{comment}/\\end{comment}/?^\\begin{comment}:noh'
" }}}
" ########################################################

" ########## Package ########## "
" {{{
" ## JpFormat ##
" 整形対象外の正規表現(空文字 か'^$' を指定すると全ての行が整形対象になる)
" 半角だけの行は整形しない
"let g:JpFormatExclude = '^[^\x00-\xff]\+$'
" 日本語以外で始まった場合は整形しない
let g:JpFormatExclude = '^[\x00-\xff]'

" 日本語の行の連結時には空白を入力しない。
set formatoptions+=mMj

" 文字数指定を半角/全角単位にする
" 1:半角 2:全角
let JpFormatCountMode = 2

" 原稿(折り返し)全角文字数
" 原稿文字数(全角の折り返し文字数)
let JpCountChars = 35

" 禁則処理の最大ぶら下がり字数(-1なら全てぶら下げ)
let JpCountOverChars = 1

" 現在行を整形対象外でも強制的に整形
nnoremap <silent> gL :JpFormat!<CR>
vnoremap <silent> gL :JpFormat!<CR>

" 対象外ではない文すべてを整形状態にする
nnoremap ga :JpFormatAll<CR>

" 非整形状態に戻す
nnoremap gj :JpJoinAll<CR>
vnoremap gj :JpJoin<CR>

" 自動整形のON/OFF切替
nnoremap gt :JpFormatToggle<CR>
vnoremap gt :JpFormatToggle<CR>

" 挿入モードでキー入力する度に自動整形を行う/行わない
let g:JpFormatCursorMovedI = 1

if executable('cmigemo')
    cnoremap <silent> <expr><CR> migemosearch#replace_search_word()."\<CR>"
endif
" }}}
" ########################################################

