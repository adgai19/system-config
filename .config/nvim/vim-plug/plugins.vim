" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'vim-scripts/loremipsum'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'arcticicestudio/nord-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'neomake/neomake'
Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
"Plug 'SirVer/ultisnips'
Plug 'voldikss/vim-floaterm'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug '/Asheq/close-buffers.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/denite-extra'
"Plug 'rust-lang/rust.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"Plug 'honza/vim-snippets'
Plug 'lfilho/cosco.vim'
"Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
"Plug 'mkitt/tabline.vim'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'wokalski/autocomplete-flow'
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin' |
      \ Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'ianks/vim-tsx'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vim-which-key'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"Plug 'voldikss/vim-floaterm'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
"Plug 'mitermayer/vim-prettier'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lilydjwg/colorizer'
Plug 'aben20807/vim-runner'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'vim-ctrlspace/vim-ctrlspace'
call plug#end()
