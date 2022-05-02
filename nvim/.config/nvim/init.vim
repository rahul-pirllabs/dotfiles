set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')

" gruvboxxxx babyyy
Plug 'gruvbox-community/gruvbox'
Plug 'luisiacc/gruvbox-baby'

" xcode-theme
" I think this is easier to read
Plug 'nickaroot/vim-xcode-dark-theme'

" Plebvim lsp Plugins

" Basic LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
" Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

" TabNine (someathing like AI assisted autocomplete)
" Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }

" vsCode like pictograms for neovim lsp completion items
" Plug 'onsails/lspkind-nvim'

" I think this is related to RUST and i will not need it 
" Plug 'nvim-lua/lsp_extensions.nvim'

" Additioal plugin for nvim-lsp for additional functionality
" Plug 'glepnir/lspsaga.nvim'
" Plug 'simrat39/symbols-outline.nvim'

" Telescope 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" This is a much better sorting algo
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" File browser
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Harpoonnn MAN
Plug 'ThePrimeagen/harpoon'

" Git worktree
Plug 'ThePrimeagen/git-worktree.nvim'

" UndoTreee
Plug 'mbbill/undotree'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Pretty
Plug 'sbdchd/neoformat'

" I can't spell 
" To use type `:GrammarousCheck`
Plug 'rhysd/vim-grammarous'

" Markdown preview
" to use just type `:Glow`
Plug 'ellisonleao/glow.nvim'

" Comment 
Plug 'numToStr/Comment.nvim'

call plug#end()

let mapleader = " "

lua require("thepakru")

" Remaps and Shortcuts

" Reload the source file `leader+ENTER`
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" Move back to the file tree
nnoremap <leader>pv :Ex<CR>

