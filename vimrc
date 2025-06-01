syntax on
set number
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
" set cursorline

" ===== Plugin ======
call plug#begin('~/.vim/plugged')
Plug 'git@github.com:lemonlight/vim-riscv'

" File Navigation
Plug 'preservim/nerdtree'

" Productivity
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" Colorscheme
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'

" File Searcher
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Syntax highlighter
Plug 'sheerun/vim-polyglot'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Multicursor
Plug 'mg979/vim-visual-multi'

" Code Prettier
" Plug 'neoclide/coc-eslint'
" Plug 'neoclide/coc-prettier'

call plug#end()

" ===== Colorscheme =====
colorscheme gruvbox
set termguicolors

" ===== Key Mapping =====
tnoremap <Esc> <C-\><C-n>
nnoremap <C-j> 10j
nnoremap <C-k> 10k
vnoremap <C-j> 10j
vnoremap <C-k> 10k
nnoremap <C-m> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>
noremap <C-i> <C-x> 
noremap <C-s> <C-v>
nnoremap <silent> M :call CocActionAsync('doHover')<CR>
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Tab Navigation
nnoremap <A-1> :tabn 1<CR>
nnoremap <A-2> :tabn 2<CR>
nnoremap <A-3> :tabn 3<CR>
nnoremap <A-4> :tabn 4<CR>
nnoremap <A-5> :tabn 5<CR>
nnoremap <A-p> :tabnext<CR>
nnoremap <A-n> :tabprev<CR>

