if exists('g:loaded_yankshare')
  finish
endif
let g:loaded_yankshare = 1

let s:save_cpo = &cpo
set cpo&vim

let g:yankshare_file = expand(get(g:, 'yankshare_file', '~/.vim/yankshare.txt'))
let s:yankshare_dir = fnamemodify(g:yankshare_file, ":p:h")
if !(s:yankshare_dir=='' || isdirectory(s:yankshare_dir))
  call mkdir(s:yankround_dir, 'p')
end

let g:yankshare_register = get(g:, 'yankshare_register', 's')

function! s:set_map(register)
  execute "nnoremap <silent><Plug>(yankshare)y  \"" . a:register . "yy:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)yy \"" . a:register . "yy:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)Y  \"" . a:register . "Y:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)y$ \"" . a:register . "y$:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)y0 \"" . a:register . "y0:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)yw \"" . a:register . "yw:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)cc \"" . a:register . "cc<ESC>:call yankshare#store()<CR>i"
  execute "nnoremap <silent><Plug>(yankshare)C  \"" . a:register . "C<ESC>:call yankshare#store()<CR>i"
  execute "nnoremap <silent><Plug>(yankshare)c$ \"" . a:register . "c$<ESC>:call yankshare#store()<CR>i"
  execute "nnoremap <silent><Plug>(yankshare)c0 \"" . a:register . "c0<ESC>:call yankshare#store()<CR>i"
  execute "nnoremap <silent><Plug>(yankshare)cw \"" . a:register . "cw<ESC>:call yankshare#store()<CR>i"
  execute "nnoremap <silent><Plug>(yankshare)dd \"" . a:register . "dd:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)D  \"" . a:register . "D:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)d$ \"" . a:register . "d$:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)d0 \"" . a:register . "d0:call yankshare#store()<CR>"
  execute "nnoremap <silent><Plug>(yankshare)dw \"" . a:register . "dw:call yankshare#store()<CR>"

  execute "xnoremap <silent><Plug>(yankshare)y  \"" . a:register . "y:call yankshare#store()<CR>"
  execute "xnoremap <silent><Plug>(yankshare)c  \"" . a:register . "c<ESC>:call yankshare#store()<CR>i"
  execute "xnoremap <silent><Plug>(yankshare)d  \"" . a:register . "d:call yankshare#store()<CR>"

  execute "nnoremap <silent><Plug>(yankshare)p :call yankshare#load()<CR>\"" . a:register . "p"
  execute "nnoremap <silent><Plug>(yankshare)P :call yankshare#load()<CR>\"" . a:register . "P"
  execute "nnoremap <silent><Plug>(yankshare)gp :call yankshare#load()<CR>\"" . a:register . "gp"
  execute "nnoremap <silent><Plug>(yankshare)gP :call yankshare#load()<CR>\"" . a:register . "gP"
endfunction

call s:set_map(g:yankshare_register)

let &cpo = s:save_cpo
unlet s:save_cpo
