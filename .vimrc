call plug#begin('$HOME/plugged')

" OneDark theme
Plug 'joshdick/onedark.vim'

" Language client
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Typescript highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status bar
Plug 'itchyny/lightline.vim'

" tpope stuff
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Git stuff
Plug 'airblade/vim-gitgutter'

call plug#end()



" Enable type file detection
filetype on

" Enable plugins and load plugin for detected file type
filetype plugin on

" Turn syntax highlighting on
syntax on

" Show line numbers
set number

" Highlight horizontal cursor line
set cursorline

" Highlight vertical cursor line
"set cursorcolumn

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use spaces for tabs
set expandtab

" Do not save backup files
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
"set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
"set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing tab
set wildmenu

" Make wildmenu behave like Bash completion
set wildmode=list:longest

" Ignore file we would not like to edit with Vim for wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Disable swap files
set noswapfile

" Enable splitting files vertically
set splitbelow

" Enable splitting files horizontally
set splitright

" Change directory with file in buffer
"set autochdir



let mapleader=(' ')

" Mappings
inoremap jk <Esc>
tnoremap jk <Esc>

" Use Ctrl + j/k to page down/up
nnoremap <C-j> <C-f>
nnoremap <C-k> <C-b>

" Easy v an h split
nnoremap <silent><leader>v :vsplit<CR>
nnoremap <silent><leader>h :split<CR>

" Copy to clipboard
vnoremap <silent><leader>y "*y
" Paste from clipboard
nnoremap <silent><leader>p "*p

" FZF mappings
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><C-P> :History<CR>
nnoremap <leader>d :Rg <space>

" Use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



colorscheme onedark
if (has("termguicolors"))
    set termguicolors
endif
