call plug#begin("~/.config/nvim/plugged")

Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'

Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'

call plug#end()

syntax enable
filetype plugin indent on
set termguicolors
let ayucolor="dark"
colorscheme ayu

set t_Co=256
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

set mouse=a
set title
set number
set ttyfast
set hlsearch
set nobackup
set noshowmode
set noshowcmd
set incsearch
set scrolloff=5
set noswapfile
set nocompatible
set clipboard=unnamedplus
set background=dark
set completeopt=noinsert,menuone,noselect
set splitbelow splitright

set autoindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let NERDTreeShowHidden=1

let g:tex_conceal = ''
let g:vim_markdown_math = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

augroup auto_commands
	autocmd BufWrite *.py call CocAction('format')
	autocmd FileType scss setlocal iskeyword+=@-@
augroup END

nnoremap <silent> <C-s> :w!<CR>
nnoremap <silent> <C-q> :q!<CR>
nnoremap <silent> <C-w> :wq!<CR>
nnoremap <silent> <C-b> :bd<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-Tab> :bnext<CR>
nnoremap <silent> <C-S-Tab> :bprev<CR>

inoremap <silent> <C-h> <Home>
nnoremap <silent> <C-h> <Home>
inoremap <silent> <C-l> <End>
nnoremap <silent> <C-l> <End>
inoremap <silent> <C-k> <C-Home>
nnoremap <silent> <C-k> <C-Home>
inoremap <silent> <C-j> <C-End>
nnoremap <silent> <C-j> <C-End>

nnoremap <silent> <C-x> :call nerdcommenter#Comment(0, "toggle")<CR>
inoremap <silent> <C-x> :call nerdcommenter#Comment(0, "toggle")<CR>
vnoremap <silent> <C-x> :call nerdcommenter#Comment(0, "toggle")<CR>
