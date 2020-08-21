" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'neomake/neomake'
Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
"Plug 'SirVer/ultisnips'
Plug 'voldikss/vim-floaterm'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
"Plug 'honza/vim-snippets'
Plug 'lfilho/cosco.vim'
"Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"Plug 'mkitt/tabline.vim'
"Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'wokalski/autocomplete-flow'
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'ianks/vim-tsx'
"Plug 'gko/vim-coloresque'
"Plug 'chrisbra/Colorizer'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vim-which-key'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"Plug 'voldikss/vim-floaterm'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
"Plug 'mitermayer/vim-prettier'
"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lilydjwg/colorizer'
Plug 'aben20807/vim-runner'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'vim-ctrlspace/vim-ctrlspace'
call plug#end()
