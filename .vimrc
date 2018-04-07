"
execute pathogen#infect()
filetype plugin indent on

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"
set nu
highlight LineNr ctermfg=grey

"
let g:ctrlp_map = '<leader>p'
let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|\v[\/]\.(git|hg|svn)$'
let g:ctrlp_follow_symlinks = 1
set shell=bash

"
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/

"
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='molokai'

"
syntax enable

" Hide buffers instead of closing them
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>t :enew<CR>
" Move to the next buffer
nmap <silent> <leader>] :bnext<CR>
" Move to the previous buffer
nmap <silent> <leader>[ :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>

"
set list
set listchars=tab:--,trail:.,extends:#,nbsp:.
hi NonText ctermfg=7 guifg=red
hi SpecialKey ctermfg=7 guifg=red
hi SpecialKey ctermfg=66 guifg=#eeeeee

"
nmap <leader>w :w<CR>

"
hi Folded ctermbg=237

set t_Co=256
