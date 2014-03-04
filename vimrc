" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility
set nocompatible
" indent
set autoindent
set smartindent
set cindent
" tab
set tabstop=4
set shiftwidth=4
set expandtab
" syntax highlighting
set t_Co=256
syntax on
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" show line/column numbers
set ruler
" completion mode
set wildmode=longest,list
" search options
set incsearch
set ignorecase
set smartcase
set hlsearch
" scroll option
set scrolloff=2
" no auto linebreak
set nolbr
" allow editing other files without saving current
set hidden
" show status lines
set laststatus=2
" set statusline
" mark wrapped lines
set showbreak=>

set tags=~/.tags

if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd BufNewFile,BufRead *.json set ft=javascript
endif

" custom mappings

:nmap \l :setlocal number!<CR>
:nmap \q :nohlsearch<CR>
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>
:nmap ; :CtrlPBuffer<CR>
