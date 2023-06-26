call plug#begin("~/.config/nvim/plugged")
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'  
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    Plug 'jiangmiao/auto-pairs'
    Plug 'sbdchd/neoformat'
    Plug 'alvan/vim-closetag'
    Plug 'easymotion/vim-easymotion'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:neoformat_try_node_exe = 1

let mapleader = " "

map <leader>t :NERDTreeToggle<CR>
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" End

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


set clipboard=unnamedplus   
set nocompatible
set mouse=v
set hlsearch
set incsearch
set showcmd
set cc=80
set mouse=a
set cursorline 
set ttyfast
set noswapfile
set backupdir=~/.cache/vim
syntax on
set wildmode=longest,list
set shiftwidth=2
set expandtab
set autoindent
set number
set relativenumber
set background=dark

colorscheme tokyonight 


lua << END
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = "dracula",
    disabled_filetypes = {}
  }
}) 
  
END