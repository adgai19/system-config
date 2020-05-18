call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug '/preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
call plug#end()
colorscheme nord
set wildmode=longest,list,full
autocmd vimenter * NERDTree
