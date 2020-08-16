let s:save_cpo = &cpo
set cpo&vim

function! yankshare#store() range
  call writefile([getreg(g:yankshare_register)], g:yankshare_file, 'b')
endfunction

function! yankshare#load() range
  call setreg(g:yankshare_register, readfile(g:yankshare_file, 'b')[0])
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
