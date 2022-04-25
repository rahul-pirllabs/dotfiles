" These are related to indenting and tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Sets the cursor to block type
set guicursor=

" Turns on relative numbering super IMP
set relativenumber

" Makes search not highlight the word after inital search
set nohlsearch

" erorrs bells do not cause sound
set noerrorbells

" This is something that is buffer related.
set hidden

" Has somthing to do with number lines ??
set nu

" This is related to wraping of text
set nowrap

" This is used to prevent the creation of swap files
set noswapfile

" Do not create a backup file when quiting
set nobackup

" Setting up undo path 
set undodir=~/.vim/undodir
set undofile

" Incremental search
set incsearch

" Terminal colors (will need to see if this was the set that was causing
" problems
" set termguicolors

" Number of lines to keep when scrolling
set scrolloff=8

" set signcolomn
set signcolumn=yes

" Include the following symbols when searching in paths
set isfname+=@-@

" Give more space for displaying messages
set cmdheight=1

" Having longer undate times leads to notiveable delays and poor user
" experience
set  updatetime=50

" set the line indicating number of chars
set colorcolumn=80
