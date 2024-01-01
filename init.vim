call plug#begin()
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim'
Plug 'sansyrox/vim-python-virtualenv'
call plug#end()

set number
" set relativenumber
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8

:colorscheme nord

syntax on
hi Visual term=reverse cterm=reverse guibg=Grey

nnoremap <C-q> :NERDTreeToggle<CR>
nnoremap <C-/> :PlugInstall<CR>
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>


inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
