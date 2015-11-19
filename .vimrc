" pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" backspace
set backspace=indent,eol,start

" search
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch

" tabs
set tabstop=4 expandtab shiftwidth=4 softtabstop=4

" numbering
set number
set nocursorcolumn
set nocursorline
set norelativenumber
syntax sync minlines=256

" airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_detect_modified=1
let g:airline_section_z = '%3l/%L:%2c'
set guifont=Inconsolata\ for\ Powerline:h14
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:solarized_term = 1
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" pymode
let g:pymode_lint_on_write = 0
let g:pymode_options_max_line_length = 109
let g:pymode_rope_goto_definition_bind = "<C-]>"
set nofoldenable

" ag
let g:ag_working_path_mode='r'

" leader
let mapleader = "\<Space>"

" bindings
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
" not for the faint of heart
nnoremap <Leader>q :q!<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P :+P
vmap <Leader>p "+p
vmap <Leader>P "+P

nmap <Leader><Leader> V

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

set clipboard=unnamed

" stop that stupid window from popping up
map q: :q

" make ctrlp faster
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
    let g:ctrlp_prompt_mappings = { \ 'AcceptSelection("e")': ['<space>', '<cr>', '<2-LeftMouse>'], \ }
endif

