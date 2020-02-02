set number
syntax on

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'osyo-manga/vim-marching'
Plug 'jiangmiao/auto-pairs'
Plug 'ajh17/vimcompletesme'
Plug 'tpope/vim-commentary'
call plug#end()

" let g:deoplete#enable_at_startup = 1

" tab stuff
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4 

filetype on
filetype plugin on

" set scl=no  " NO signcolumn
" autocmd FileType cpp set scl=yes  " force the signcolumn to appear

