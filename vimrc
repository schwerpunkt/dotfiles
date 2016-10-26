" autoload bundles
 execute pathogen#infect()

" start with syntax
syntax on

# monokai style
colorscheme monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.

" start with line numbers
set nu

" old vi legacy disable enter the current millenium https://www.youtube.com/watch?v=XA2WjJbmmoM
" set nocompatible

" built in file browsing https://www.youtube.com/watch?v=XA2WjJbmmoM
filetype plugin on

" enable mouse
" set mouse=a

" bundle airline activate
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

