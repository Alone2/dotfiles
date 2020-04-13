set number
syntax on

" autocmd FileType rmd map <F5> :w <enter> :!sh ../scripts/RgeneratePdf.sh % <enter>
" autocmd FileType rmd map <F6> :w <enter> :!sh ../scripts/RshowAndGeneratePdf.sh % <enter>

" autocmd FileType md map <F5> :w <enter> :!sh ../scripts/generatePres.sh % <enter>
" autocmd FileType md map <F6> :w <enter> :!sh ../scripts/showAndGeneratePres.sh % <enter>

autocmd FileType cpp map <F5> :w <enter> :!g++ -g -o out.out % <enter>
" command For :normal i	for (int i = 0; i < ; i++)<esc>5h i
map <C-k> :normal i	for (int i = 0; i < ; i++)<esc>6h i
inoremap <C-k> for (int i = 0; i < ; i++)<esc>6h i

" NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'osyo-manga/vim-marching'
Plug 'jiangmiao/auto-pairs'
Plug 'ajh17/vimcompletesme'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
call plug#end()


" tab stuff
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4 
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


filetype on
" autocmd FileType md map <F5> :w <enter> :!markdown % > .out.html && firefox .out.html <enter>
filetype plugin on

set scl=yes
hi clear Signcolumn " Schoenere Signcolumn
" autocmd FileType cpp set scl=yes  " force the signcolumn to appear

" map <F2> a<C-R>=strftime("%c")<CR><Esc>

