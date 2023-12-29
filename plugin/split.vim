command! -nargs=0 Slt call <SID>ssplit(<f-args>)
function! s:ssplit()
    if winwidth(0) > winheight(0) * 2
        vsplit
    else
        split
    endif
endfunction

"command! -nargs=1 DSlt call <SID>sdiffsplit(<f-args>)
"function! s:sdiffsplit(dfi)
"    if winwidth(0) > winheight(0) * 2
"        vertical diffsplit a:dfi
"    else
"        diffsplit a:dfi
"    endif
"endfunction



