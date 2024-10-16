
" ########## General ########## "
" {{{
"---folding---"
"## marker
set foldmethod=marker
set foldmarker=%{{{,%}}}
set foldlevel=0        "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=0       "左端に折りたたみ状態を表示する領域を追加する
inoremap cm %{{{
inoremap mc %}}}

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
inoremap \bg     \begin{}<left>
inoremap \cha    \chapter{}<left>
inoremap \sec    \section{}<left>
inoremap \ssec   \subsection{}<left>
inoremap \sssec  \subsubsection{}<left>
inoremap \doc    \begin{document}<CR> <BS><CR>\end{document}<UP>
inoremap \cm     \begin{coment}
inoremap \ecm    \end{coment}

"---equation, list---"
inoremap eq<CR>  \begin{equation}<CR> <BS><CR>\label{eq:}<CR>\end{equation}<UP><UP>
inoremap ea<CR>  \begin{eqnarray}<CR> <BS><CR>\label{eq:}<CR>\end{eqnarray}<UP><UP>
inoremap eq*<CR> \begin{equation*}<CR> <BS><CR>\end{equation*}<UP>
inoremap ea*<CR> \begin{eqnarray*}<CR> <BS><CR>\end{eqnarray*}<UP>
inoremap li<CR>  \begin{easylist}[itemize]<CR>@<CR>\end{easylist}<UP>

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
"let g:eskk#large_dictionary = {
"\ 'path': "~/.vim/.dict/SKK-JISYO.utf8.L",
"\ 'sorted': 1,
"\ 'encoding': 'utf-8',
"\}
" }}}
" ########################################################

