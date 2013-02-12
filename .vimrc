"""""""""""""""""""""""""""""
" Author: Julien Law
" Description: Just my own basic vimrc configurations
" 
" 
"""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""
"                           "
""""General Configuration""""
"                           "
"""""""""""""""""""""""""""""

" line history for vim to remember
set history=700

" auto read when file changed from outside
set autoread

" set line numbers
set nu

" show the cursor location in ROW,COL form
set ruler

" height of command bar
set cmdheight=2

" highlight search results
set hlsearch

" modernize the search function
set incsearch

" ignore case when searching
set ignorecase

" smart search case
set smartcase

" regex stuff
set magic

" matching brackets
set showmatch

" set blink time for matching brackets in 100s of ms
set mat=2

" add margin to left
set foldcolumn=1

"""""""""""""""""""""
"
"""Colors and Fonts""
"
"""""""""""""""""""""

" turn on syntax highlighting
syntax on

try
    colorscheme desert
catch
endtry

set background=dark

" set utf8 as standard encoding and en_US as standard language
set encoding=utf8

" use unix as the standard file type
set ffs=unix,dos,mac

""""""""""""
" File backups and undo
""""""""""""

" turn off backup
set nobackup
set nowb
set noswapfile

""""""""""""
" Text and Spacing
""""""""""""

" use spaces instead of tabs
set expandtab

" smart tabs
set smarttab

" set tabbing length
set shiftwidth=4
set tabstop=4

" linebreak on 500 characters
set lbr
set tw=500

" auto indent
set ai
" smart indent
set si
" wordwrap
set wrap

""""""""""""
"Moving
""""""""""""

" treat long lines as line breaks
map j gj
map k gk

""""""""""""
" Status Line
""""""""""""

" always show status line
set laststatus=2

" format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

""""""""""""
" Functions
""""""""""""

" returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
