# yank-share.vim
Vim plugin to yank (clipboard) sharing

## Installation

Use your favorite plugin manager like:

* [vim-plug](https://github.com/junegunn/vim-plug):

    Plug 'rcmdnk/yankshare.vim'

* [dein.vim](https://github.com/Shougo/dein.vim):

    dein#add('rcmdnk/yankshare.vim')

## Key Mapping

Please map `<Plug>(yankshare)` for `nmap` and `xmap`, like:


    nmap <silent> <Leader>y <Plug>(yankshare)
    xmap <silent> <Leader>y <Plug>(yankshare)

Then, `<Leader>yy` will yank the line and save it in the `g:yankshare_file`.

You can paste it in the different Vim process by `<Leader>yp`.

See more functions by `:help yankshare`.

## Options

* `g:yankshare_file`

File to store yank words.
Default value is: `~/.vim/yankshare.txt`

* `g:yankshare_registrer`

Register to store the yank words.
Default value is: `s`

