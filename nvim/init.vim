call plug#begin('$XDG_CONFIG_HOME\nvim\plugins')

" OneDark theme
Plug 'joshdick/onedark.vim'

" Language client
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensiosn = ['coc-css', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-python', 'coc-java']
" Typescript highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" File search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='onedark'

" tpope stuff
Plug 'tpope/vim-fugitive'

" Git stuff
Plug 'airblade/vim-gitgutter'

" NERD stuff 
Plug 'preservim/nerdtree'

call plug#end()


colorscheme onedark
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Enable preview window for FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)


set encoding=UTF-8
set number
set autochdir
set smartcase
set tabstop=2
set shiftwidth=2
set expandtab
set splitbelow
set splitright

let mapleader=(' ')


" Mappings
imap jk <Esc>
tnoremap jk <Esc>
nnoremap <silent><leader>v :vsplit<CR>
nnoremap <silent><leader>h :split<CR>

" Paste from clipboard
nnoremap pp "+p

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

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" coc.nvim
nmap <silent> <leader>gd <Plug>(cod-definition)

let $CONFIG="$XDG_CONFIG_HOME\\nvim\\init.vim"
