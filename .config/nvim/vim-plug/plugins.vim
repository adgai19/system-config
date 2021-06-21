""Maxi" auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
  "silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif
"call plug#begin('~/.config/nvim/autoload/plugged')
"" insert dummy text
"Plug 'vim-scripts/loremipsum'
"" better wildmenu
""Plug 'gelguy/wilder.nvim'
"" refactor python
"Plug 'python-rope/ropevim'
""tmux helper
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'tmux-plugins/vim-tmux'
"Plug 'preservim/vimux'
""yaml helper
"Plug 'stephpy/vim-yaml'
""needed for many plugins
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-lua/popup.nvim'
""lua formatter
"Plug 'andrejlevkovitch/vim-lua-format'
""surround plugin
"Plug 'blackcauldron7/surround.nvim'
""color scheme
"Plug 'tjdevries/gruvbuddy.nvim'
"Plug 'tjdevries/colorbuddy.vim'
"Plug 'arcticicestudio/nord-vim'
"Plug 'morhetz/gruvbox'
"Plug 'maaslalani/nordbuddy'
"Plug 'kyazdani42/nvim-web-devicons'
""context caller
"Plug 'haringsrob/nvim_context_vt'
""snippets
"Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
""telescope
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'fannheyward/telescope-coc.nvim'
"Plug 'jvgrootveld/telescope-zoxide'
"Plug 'https://github.com/camgraff/telescope-tmux.nvim'
"Plug 'nvim-telescope/telescope-project.nvim'
"Plug 'nvim-telescope/telescope-frecency.nvim'
"Plug 'nvim-telescope/telescope-dap.nvim'
"Plug 'tami5/sql.nvim'
"Plug 'nvim-telescope/telescope-cheat.nvim'
""Plug 'the-codingguy/telescope-checkout'
"Plug 'nvim-telescope/telescope-media-files.nvim'
"Plug '/home/adgai/github/telescope-checkout'
"Plug 'nvim-telescope/telescope-arecibo.nvim'
""tpope is god
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-dispatch'
"Plug 'tpope/vim-eunuch'
"Plug 'tpope/vim-unimpaired'
""dap
"Plug 'mfussenegger/nvim-dap'
"Plug 'mfussenegger/nvim-dap-python'
""luarocks 
"Plug 'theHamsta/nvim_rocks', {'do': 'pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp nvim_rocks.lua lua'}
""lsp symbols 
"Plug 'https://github.com/folke/lsp-trouble.nvim'
"Plug 'liuchengxu/vista.vim'
""tex helper
"Plug 'lervag/vimtex'
""treesitter
"Plug 'nvim-treesitter/nvim-treesitter'
"Plug 'nvim-treesitter/nvim-treesitter-refactor'
""toml stuff
"Plug 'cespare/vim-toml'
""lsp
"Plug 'neovim/nvim-lspconfig'
"Plug 'simrat39/rust-tools.nvim'

""qf settings
"Plug 'romainl/vim-qf'

""prettier
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
""current word highlighter
"Plug 'https://github.com/RRethy/vim-illuminate'
""indent provider for spaces
"Plug 'Yggdroot/indentLine'
""rust formatter
"Plug 'https://github.com/alx741/vim-rustfmt'

""move blocks with A-hjkl
"Plug 'matze/vim-move'
""rainbow_parentheses
"Plug 'luochen1990/rainbow'
"Plug 'junegunn/rainbow_parentheses.vim'
""code formatter for python
"Plug 'nvie/vim-flake8'

""Plug 'severin-lemaignan/vim-minimap'
""jsx prettier
"Plug 'maxmellon/vim-jsx-pretty'
""lua support for nvim
"Plug 'rafcamlet/coc-nvim-lua'
""lua helper
"Plug 'xolox/vim-lua-ftplugin'
""html matching brackets change
"Plug 'AndrewRadev/tagalong.vim'

"Plug 'tpope/vim-surround'
"Plug 'https://github.com/wbthomason/packer.nvim'
"Plug 'https://github.com/szw/vim-g'
"Plug 'tpope/vim-obsession'
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'
"Plug 'voldikss/vim-floaterm'
"Plug 'Chiel92/vim-autoformat'
"Plug 'vim-airline/vim-airline'
"Plug 'JamshedVesuna/vim-markdown-preview'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'Shougo/denite.nvim'
"Plug 'chemzqm/denite-extra'
"Plug 'josa42/coc-lua', {'do': 'yarn install --frozen-lockfile'}
"Plug 'xolox/vim-misc'
"Plug 'airblade/vim-rooter'
"Plug 'tbastos/vim-lua'
"Plug 'lfilho/cosco.vim'
"Plug 'preservim/nerdcommenter'
"Plug 'junegunn/fzf.vim'
"Plug 'chiefnoah/neuron-v2.vim'
"Plug 'w0rp/ale'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
""Plug 'sheerun/vim-polyglot'
""Plug 'scrooloose/NERDTree'
"Plug 'jiangmiao/auto-pairs'
"Plug 'mhinz/vim-startify'
"Plug 'ianks/vim-tsx'
"Plug 'liuchengxu/vim-which-key'
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'rbgrouleff/bclose.vim'
"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'lilydjwg/colorizer'
"Plug 'jiangmiao/auto-pairs'
"Plug 'alvan/vim-closetag'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'vim-ctrlspace/vim-ctrlspace'
"Plug 'puremourning/vimspector'
"Plug 'preservim/nerdtree' |
      "\ Plug 'Xuyuanp/nerdtree-git-plugin' |
      "\ Plug 'ryanoasis/vim-devicons'
"call plug#end()

"" not installed plugins
"" "Plug 'mkitt/tabline.vim'
""Plug 'sindrets/diffview.nvim'
""Plug 'adgai19/vim-whiplash'
""Plug 'SirVer/ultisnips'
""Plug 'honza/vim-snippets'
""Plug 'neomake/neomake'
""Plug 'hdiniz/vim-gradle'
""Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
""Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
""Plug 'wokalski/autocomplete-flow'
""Plug 'Shougo/neosnippet'
""Plug 'xolox/vim-lua-inspect'
""Plug 'yuezk/vim-js'
""Plug 'frazrepo/vim-rainbow'
""Plug 'lifepillar/vim-mucomplete'
""Plug 'rmagatti/auto-session'
""Plug 'rmagatti/session-lens'
""Plug 'glepnir/dashboard-nvim'
""Plug 'rust-lang/rust.vim'
""Plug 'Shougo/neosnippet-snippets'
""Plug 'mitermayer/vim-prettier'
""Plug 'kosayoda/nvim-lightbulb'
""Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
""Plug 'prabirshrestha/async.vim'
""Plug 'prabirshrestha/asyncomplete-lsp.vim'
""Plug 'prabirshrestha/asyncomplete.vim'
""Plug 'tpope/vim-speeddating'
""Plug 'https://github.com/thinca/vim-quickrun'
""Plug 'codota/tabnine-vim'
""Plug 'tpope/vim-endwise'
""Plug 'nvim-telescope/telescope-project.nvim'
""Plug 'https://github.com/szw/vim-maximizer'
""Plug 'https://github.com/nvim-telescope/telescope-packer.nvim'
""Plug 'Asheq/close-buffers.vim'
""Plug 'junegunn/fzf', { 'do': { -> fzf"install() } }
""Plug 'junegunn/fzf.vim'
""Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
""Plug 'francoiscabrol/ranger.vim'
""Plug 'aben20807/vim-runner'
