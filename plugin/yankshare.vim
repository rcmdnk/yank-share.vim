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

nnoremap <silent><Plug>(yankshare)y  "syy:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)yy "syy:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)Y  "sY:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)y$ "sy$:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)y0 "sy0:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)yw "syw:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)cc "scc<ESC>:call yankshare#store()<CR>i
nnoremap <silent><Plug>(yankshare)C  "sC<ESC>:call yankshare#store()<CR>i
nnoremap <silent><Plug>(yankshare)c$ "sc$<ESC>:call yankshare#store()<CR>i
nnoremap <silent><Plug>(yankshare)c0 "sc0<ESC>:call yankshare#store()<CR>i
nnoremap <silent><Plug>(yankshare)cw "scw<ESC>:call yankshare#store()<CR>i
nnoremap <silent><Plug>(yankshare)dd "sdd:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)D  "sD:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)d$ "sd$:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)d0 "sd0:call yankshare#store()<CR>
nnoremap <silent><Plug>(yankshare)dw "sdw:call yankshare#store()<CR>

xnoremap <silent><Plug>(yankshare)y "sy:call yankshare#store()<CR>
xnoremap <silent><Plug>(yankshare)c "sc<ESC>:call yankshare#store()<CR>i
xnoremap <silent><Plug>(yankshare)d "sd:call yankshare#store()<CR>

nnoremap <silent><Plug>(yankshare)p :call yankshare#load()<CR>"sp
nnoremap <silent><Plug>(yankshare)P :call yankshare#load()<CR>"sP
nnoremap <silent><Plug>(yankshare)gp :call yankshare#load()<CR>"sgp
nnoremap <silent><Plug>(yankshare)gP :call yankshare#load()<CR>"sgP

let &cpo = s:save_cpo
unlet s:save_cpo
