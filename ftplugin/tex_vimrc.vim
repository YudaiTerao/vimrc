
"tab長さ"
set tabstop=2

"逆tabの設定"
set shiftwidth=2

inoremap eq<CR> \begin{equation}<CR> <BS><CR>  \label{eq:}<CR>\end{equation}<UP><UP>
inoremap ea<CR> \begin{eqnarray}<CR> <BS><CR>  \label{eq:}<CR>\end{eqnarray}<UP><UP>
inoremap eq*<CR> \begin{equation*}<CR> <BS><CR>\end{equation*}<UP>
inoremap ea*<CR> \begin{eqnarray*}<CR> <BS><CR>\end{eqnarray*}<UP>
inoremap li<CR> \begin{easylist}[itemize]<CR>@<CR>\end{easylist}<UP>

inoremap fig<CR> 
\\begin{figure}[H]<CR>
\\centering<CR>
\\captionsetup{width=1.0\linewidth, position=top,<CR>
\              margin={0.0\linewidth, 0.0\linewidth}, skip=0.02cm,<CR>
\justification=centering, singlelinecheck=off,<CR>
\format=plain, indention=8pt, labelsep=space<CR>
\<BS>}<CR>
\<BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><BS><BS>\caption{}<CR>
\\label{fig:}<CR><CR>
\\end{figure}<UP><UP><UP>

inoremap tab<CR> 
\\begin{table}[H]<CR>
\\centering<CR>
\\captionsetup{width=1.0\linewidth, position=top,<CR>
\              margin={0.0\linewidth, 0.0\linewidth}, skip=0.02cm,<CR>
\justification=centering, singlelinecheck=off,<CR>
\format=plain, indention=8pt, labelsep=space<CR>
\<BS>}<CR>
\<BS><C-d><C-d><C-d><C-d><C-d><C-d>\caption{}<CR>
\\label{table:}<CR><CR>
\\end{table}<UP><UP><UP>

inoremap mini<CR> 
\\fbox{<CR><C-d>
\\begin{minipage}[H]{0.45\textwidth}<CR>
\\centering<CR>
\\subcaptionsetup{width=0.7\linewidth, position=bottom,<CR>
\                 margin={0.1\linewidth, 0.1\linewidth}, skip=0.02cm,<CR>
\justification=centering, singlelinecheck=off,<CR>
\format=plain, indention=8pt, labelsep=space<CR>
\<BS>}<CR>
\<C-d><C-d><C-d><C-d><C-d><C-d><C-d><C-d>
\\includegraphics[keepaspectratio, width=1.0\linewidth]{}<CR>
\\subcaption{}<CR>
\\label{fig:}<CR><C-d>
\\end{minipage}<CR>
\}<UP><UP><UP><UP><End><left>



inoremap ff<CR>   Fig.\ref{fig:}<left>
inoremap tf<CR>   Table.\ref{table:}<left>
inoremap ef<CR>   \eqref{eq:}式<left><left>
inoremap cf<CR>   \cite{}<left><left>

inoremap CrFeS2<CR>  \ce{(CrFe)S2}
inoremap Mn3Al<CR>   \ce{Mn3Al}
inoremap CoMnN2<CR>  \ce{(CoMn)N2}




