" ---------------------------- PLUGINS
"

call plug#begin()

Plug 'vim-syntastic/syntastic'			" Avoid simple mistakes of syntax
Plug 'tpope/vim-surround'				" Plugin to help surrounding (){}[]...
Plug 'bling/vim-airline'				" Bottom line styling plugin
Plug 'vim-airline/vim-airline-themes'	" Themes for vim-airline
Plug 'chrisbra/Recover.vim'				" recover .swp files
Plug 'ekalinin/Dockerfile.vim'			" syntax for Dockerfiles
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "FZF !
Plug 'tpope/vim-fugitive'				" git plugin
Plug 'junegunn/goyo.vim'				" Distraction free plugin

" Initialize plugin system
call plug#end()



filetype plugin indent on

" ---------------------------- BASICS
"
set number				" ---- Display line numbers
syntax enable			" ---- Syntax color on
set mouse=a				" ---- Now you can use your mouse! (sometimes...)
set title				" ---- Update title
set ruler				" ---- Diplay cursor position
set linebreak			" ---- Don't cut words
set scrolloff=5			" ---- Minimum 5 lines are displayed
set shiftwidth=4		" ---- tab = 4 spaces
set tabstop=4			" ----
set background=dark	 	" ---- Set dark bg
set laststatus=2		" ---- Display status
set showcmd				" ---- Display incompletes cmd
set wildmenu			" ---- Show autocompletion
set pastetoggle=<F2>	" ---- Press F2 to have the paste mode
set	ignorecase			" ---- Ignore case while searching
set	smartcase			" ---- Except if there's one Maj
set incsearch			" ---- Highlight text while searching
set	noswapfile			" ---- No swap files will be created

" ---------------------------- SET LEADER
"
let mapleader=","

" ---------------------------- SET (g)UNDO TREE BETWEEN SESSIONS
"
set undofile
set history=100
set undolevels=100

" ---------------------------- EASIER NAVIGATION
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" ---------------------------- BETTER SCROLLING
"
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" ---------------------------- EASY VIM OPENER
"
nnoremap <leader>v :e  ~/.config/nvim/init.vim<CR>
nnoremap <leader>V :tabnew  ~/.config/nvim/init.vim<CR>

" ---------------------------- PLUGIN SETUP
"
" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

" ---------------------------- KANTUM SCRIPT
"
:iabbrev mainc int		main(int argc, char **argv)<cr>{<cr>}<esc>k

" ---------------------------- COOL HACKS
"
" ---------------------------- VIM RETURN TO THE SAME LINE WHEN FILE'S REOPEN
augroup line_return
	au!
	au BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\     execute 'normal! g`"zvzz' |
				\ endif
augroup END
