"""""""""""""""""""""
"" General
"""""""""""""""""""""

"" start with syntax
syntax on

"" start with line numbers
set nu

"" old vi legacy disable enter the current millenium https://www.youtube.com/watch?v=XA2WjJbmmoM
" set nocompatible

"" built in file browsing https://www.youtube.com/watch?v=XA2WjJbmmoM
filetype plugin on

"" enable mouse in normal mode by default
set mouse=n

"" ignore case if search pattern is all lowercase, case-sensitive otherwise http://nvie.com/posts/how-i-boosted-my-vim/
set ignorecase
set smartcase

"" autoindentation on http://nvie.com/posts/how-i-boosted-my-vim/
set autoindent

"" # of spaces when indenting http://nvie.com/posts/how-i-boosted-my-vim/
set shiftwidth=2
set shiftround

"""""""""""""""""""""
"" Bundles
"""""""""""""""""""""

"" autoload bundles
execute pathogen#infect()

"" bundle airline activate
"" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

"" vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors#mapping
" TODO

"" syntastic bundle basics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""
"" Colorschemes
""""""""""""""""""""

"" colors-pencil style
colorscheme pencil
set background=light
let g:airline_theme = 'pencil'
let g:pencil_higher_contrast_ui = 1   " 0=low (def), 1=high

""""""""""""""""""""
"" Keymappings
""""""""""""""""""""

"" Open e. with CTRL+l
map <C-l> :e.<CR>

"" H/L to go to previous/next tab
nnoremap H :bNext<CR>
nnoremap L :bprevious<CR>

