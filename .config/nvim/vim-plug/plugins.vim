" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'vim-scripts/loremipsum'
Plug 'stephpy/vim-yaml'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'lervag/vimtex'
Plug 'cespare/vim-toml'
Plug 'nvim-telescope/telescope.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'https://github.com/RRethy/vim-illuminate'
Plug 'yuezk/vim-js'
Plug 'Yggdroot/indentLine'
Plug 'matze/vim-move'
Plug 'luochen1990/rainbow'
Plug 'nvie/vim-flake8'
Plug 'severin-lemaignan/vim-minimap'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rafcamlet/coc-nvim-lua'
Plug 'xolox/vim-lua-ftplugin'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tmux-plugins/vim-tmux'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'voldikss/vim-floaterm'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-airline/vim-airline'
Plug '/Asheq/close-buffers.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'Shougo/denite.nvim'
Plug 'chemzqm/denite-extra'
Plug 'josa42/coc-lua', {'do': 'yarn install --frozen-lockfile'}
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'tbastos/vim-lua'
Plug 'lfilho/cosco.vim'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/NERDTree'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'ianks/vim-tsx'
Plug 'liuchengxu/vim-which-key'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'rbgrouleff/bclose.vim'
"Plug 'francoiscabrol/ranger.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lilydjwg/colorizer'
Plug 'aben20807/vim-runner'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/vim-lsp'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'preservim/nerdtree' |
      \ Plug 'Xuyuanp/nerdtree-git-plugin' |
      \ Plug 'ryanoasis/vim-devicons'
call plug#end()

" not installed plugins
" "Plug 'mkitt/tabline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
"Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet'
"Plug 'xolox/vim-lua-inspect'
"Plug 'frazrepo/vim-rainbow'
"Plug 'lifepillar/vim-mucomplete'
"Plug 'rust-lang/rust.vim'
Plug 'Shougo/neosnippet-snippets'
"Plug 'mitermayer/vim-prettier'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
