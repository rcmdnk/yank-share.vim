noremap [yshare] <Nop>
map s [yshare]

let g:yankshare_file = expand('~/.vim/yankshare.txt')
if !exists('g:yankshare_file')
  let g:yankshare_file = '/tmp/yankshare.txt'
endif

function! YSStore() range
  call writefile([getreg('s')], g:yankshare_file, 'b')
endfunction

function! YSLoad() range
  call setreg('s', readfile(g:yankshare_file, 'b')[0])
endfunction

nnoremap <silent> [yshare]y  "syy:call YSStore()<CR>
nnoremap <silent> [yshare]yy "syy:call YSStore()<CR>
nnoremap <silent> [yshare]Y  "sY:call YSStore()<CR>
nnoremap <silent> [yshare]y$ "sy$:call YSStore()<CR>
nnoremap <silent> [yshare]y0 "sy0:call YSStore()<CR>
nnoremap <silent> [yshare]yw "syw:call YSStore()<CR>
nnoremap <silent> [yshare]cc "scc<ESC>:call YSStore()<CR>i
nnoremap <silent> [yshare]C  "sC<ESC>:call YSStore()<CR>i
nnoremap <silent> [yshare]c$ "sc$<ESC>:call YSStore()<CR>i
nnoremap <silent> [yshare]c0 "sc0<ESC>:call YSStore()<CR>i
nnoremap <silent> [yshare]cw "scw<ESC>:call YSStore()<CR>i
nnoremap <silent> [yshare]dd "sdd:call YSStore()<CR>
nnoremap <silent> [yshare]D  "sD:call YSStore()<CR>
nnoremap <silent> [yshare]d$ "sd$:call YSStore()<CR>
nnoremap <silent> [yshare]d0 "sd0:call YSStore()<CR>
nnoremap <silent> [yshare]dw "sdw:call YSStore()<CR>

xnoremap <silent> [yshare]y "sy:call YSStore()<CR>
xnoremap <silent> [yshare]c "sc<ESC>:call YSStore()<CR>i
xnoremap <silent> [yshare]d "sd:call YSStore()<CR>

nnoremap <silent> [yshare]p :call YSLoad()<CR>"sp
nnoremap <silent> [yshare]P :call YSLoad()<CR>"sP
nnoremap <silent> [yshare]gp :call YSLoad()<CR>"sgp
nnoremap <silent> [yshare]gP :call YSLoad()<CR>"sgP
