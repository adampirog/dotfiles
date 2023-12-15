:set number
:set termguicolors
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set scrolloff=8
:set mouse=a
:set splitbelow splitright
:set title
:set wildmenu
:set expandtab
:set nohlsearch
:set hidden
:set incsearch
:set signcolumn=yes
:set spell

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }


" Themes
Plug 'ellisonleao/gruvbox.nvim'

call plug#end()

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"use tab to move through autocomplete sugesstions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" enter key for first autocomplete sugesstion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" enter normal mode with jj
imap jj <Esc> 
let mapleader=" "

" Auto formatting
command! -nargs=0 Format :call CocAction('format') | call CocAction('organizeImport') | update
map <C-f> :Format <Enter>


" Color theme
let g:airline_theme='wombat'
:colorscheme gruvbox


" Airline options
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

let g:gitgutter_enabled = 0
nnoremap <C-n> :NERDTreeToggle<CR>

" Additional config in a lua file
:luafile ~/.config/nvim/config.lua
let g:python3_host_prog="~/miniconda3/envs/main_env/bin/python3"
