set nocompatible              " be iMproved, required
filetype off                  " required

" some color schemes need this:
if !has('gui_running')
  set t_Co=256
endif

colorscheme gruvbox

" lightline plugin
set laststatus=2

" indent-guides plugin options
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Modify indenting settings
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Modify some other settings about files
set encoding=utf-8              " always use unicode (god dammit, windows)
set backspace=indent,eol,start  " backspace always works on insert mode
set hidden

" Some programming languages work better when only 2 spaces padding is used
autocmd FileType html,css,sass,scss,javascript setlocal sw=2 sts=2
autocmd FileType json setlocal sw=2 sts=2
autocmd FileType ruby,eruby setlocal sw=2 sts=2
autocmd FileType yaml setlocal sw=2 sts=2

" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
    syntax on
    set colorcolumn=80
    silent! color gruvbox
    set background=dark
endif

" Extra fancyness if full palette is supported
if &t_Co >= 256 || has("gui_running")
    set cursorline
    set cursorcolumn
endif

" Mark trailing spaces depending on wether we have a fancy terminal or not
if &t_Co > 2 || has("gui_running")
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
else
    set listchars=trail:~
    set list
endif


set fillchars+=vert:\   " Remove unpleasant pipes from vertical splits
                        " Sauce on this: http://stackoverflow.com/a/9001540

set showmode            " always show which mode are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set showmatch           " highlight matching parentheses and brackets

let mapleader=","

" Make window navigation less painful.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move CtrlP to CtrlT (CtrlP is for buffers)
let g:ctrlp_map = '<C-t>'

" Working with buffers is cool.
map <C-N>  :bnext<CR>
map <C-P>  :bprev<CR>
imap <C-N> <Esc>:bnext<CR>a
imap <C-P> <Esc>:bprev<CR>a

" Relative numbering is pretty useful for motions (3g, 5k...). However I'd
" prefer to have a way for switching relative numbers with a single map.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a

" have Vim jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

