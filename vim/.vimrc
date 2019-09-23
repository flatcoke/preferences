colorscheme gruvbox
set nu
set ruler
set bg=dark
set t_Co=256
set hlsearch
set expandtab
set autoindent
set nofoldenable
set laststatus=2
set ai si

syntax on

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

map <F2> :w <CR>:!python -m unittest -v %<CR>
map <F3> :w <CR>:!ruby %<CR>
map <F4> :w <CR>:!python3 %<CR>
map <F5> :w <CR>:!php %<CR>
