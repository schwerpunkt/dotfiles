"""""""""""""""""""""
"" General
"""""""""""""""""""""

"" enable syntax highlighting
syntax on

"" allow wrapping to previous/next line when using cursor keys
set whichwrap+=<,>,h,l,[,] 

"" disable delay when switching from INSERT to NORMAL mode (could have broken some <esc> commands in INSERT mode that I don't know about)
set esckeys

"" set paste mode
set paste

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

"" set vim updatetim (mainly because of gitgutter)
set updatetime=250

"" detect external changes  check one time after 4s of inactivity in normal mode http://stackoverflow.com/questions/2157914/can-vim-monitor-realtime-changes-to-a-file
set autoread
au CursorHold * checktime

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
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

"" vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors#mapping
" TODO

"" gitgutter maximum number of signs (500 default)
let g:gitgutter_max_signs = 500

""""""""""""""""""""
"" Colorschemes 
""""""""""""""""""""
"" set background
set background=light

"" little additional gitgutter color
"highlight clear SignColumn
highlight GitGutterAdd ctermfg=darkgreen
highlight GitGutterChange ctermfg=darkyellow
highlight GitGutterDelete ctermfg=darkred
highlight GitGutterChangeDelete ctermfg=yellow
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_added = ':+'
let g:gitgutter_sign_removed = ':-'
let g:gitgutter_sign_removed_first_line = '^-'
let g:gitgutter_sign_modified_removed = 'ww' " no idea what that is

""""""""""""""""""""
"" Keymappings
""""""""""""""""""""

"" Open e. with CTRL+l
map <C-l> :e.<CR>

"" L to switch buffer in normal mode
nnoremap L :bNext<CR>

"" K to close buffer in normal mode
nnoremap K :bdelete<CR>

