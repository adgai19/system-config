call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug '/preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8
call plug#end()
colorscheme nord
set wildmode=longest,list,full
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG
let g:deoplete#enable_at_startup = 1
