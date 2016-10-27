"" autoload bundles
execute pathogen#infect()

"" start with syntax
syntax on

"" colors-pencil style
colorscheme pencil
set background=light
let g:airline_theme = 'pencil'
let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high

"" start with line numbers
set nu

"" old vi legacy disable enter the current millenium https://www.youtube.com/watch?v=XA2WjJbmmoM
" set nocompatible

"" built in file browsing https://www.youtube.com/watch?v=XA2WjJbmmoM
filetype plugin on

"" enable mouse
" set mouse=a

"" bundle airline activate
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"" vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors#mapping
" TODO
