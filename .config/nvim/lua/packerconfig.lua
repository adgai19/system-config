vim.cmd [[packadd packer.nvim]]
-- vim._update_package_paths()
require('packer').startup(function(use)
    use 'vim-scripts/loremipsum'
    use 'gelguy/wilder.nvim'
    use 'wbthomason/packer.nvim'
    use 'python-rope/ropevim'
    use 'christoomey/vim-tmux-navigator'
    use 'tmux-plugins/vim-tmux'
    use 'preservim/vimux'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'stephpy/vim-yaml'
    use 'fatih/vim-go'
    use 'morhetz/gruvbox'
    use 'maaslalani/nordbuddy'
    use 'tjdevries/colorbuddy.vim'
    use 'andrejlevkovitch/vim-lua-format'
    use 'blackcauldron7/surround.nvim'
    use 'tjdevries/gruvbuddy.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'haringsrob/nvim_context_vt'
    use {'michaelb/sniprun', run = 'bash install.sh'}
    use 'Raimondi/delimitMate'
    use 'hrsh7th/nvim-compe'
    use 'nvim-treesitter/completion-treesitter' --
    -- use 'nvim-lua/completion-nvim'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    -- use 'fannheyward/telescope-coc.nvim'
    use 'jvgrootveld/telescope-zoxide'
    use 'https://github.com/camgraff/telescope-tmux.nvim'
    use 'nvim-telescope/telescope-project.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'
    use 'nvim-telescope/telescope-dap.nvim'
    use 'tami5/sql.nvim'
    use 'nvim-telescope/telescope-cheat.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use '/home/adgai/github/telescope-checkout'
    use {
        "nvim-telescope/telescope-arecibo.nvim",
        rocks = {"openssl", "lua-http-parser"}
    }
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use 'tpope/vim-fugitive'
    use {"ray-x/lsp_signature.nvim"}
    use 'tpope/vim-dispatch'
    use 'tpope/vim-eunuch'
    use 'tpope/vim-surround'
    use 'tpope/vim-obsession'
    use 'tpope/vim-unimpaired'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'https://github.com/folke/lsp-trouble.nvim'
    use 'liuchengxu/vista.vim'
    use 'lervag/vimtex'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    use 'romainl/vim-qf'
    use {'prettier/vim-prettier', run = 'yarn install'}
    -- use 'https://github.com/szw/vim-g'
    use 'https://github.com/RRethy/vim-illuminate'
    use 'Yggdroot/indentLine'
    use 'https://github.com/alx741/vim-rustfmt'
    use 'matze/vim-move'
    use 'luochen1990/rainbow'
    use 'junegunn/rainbow_parentheses.vim'
    use 'nvie/vim-flake8'
    use 'maxmellon/vim-jsx-pretty'
    -- use 'rafcamlet/coc-nvim-lua'
    use 'xolox/vim-lua-ftplugin'
    use 'AndrewRadev/tagalong.vim'
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use 'voldikss/vim-floaterm'
    use 'Chiel92/vim-autoformat'
    use 'vim-airline/vim-airline'
    use 'JamshedVesuna/vim-markdown-preview'
    use 'xuhdev/vim-latex-live-preview'
    use {
        'ray-x/navigator.lua',
        requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    }
    use 'chemzqm/denite-extra'
    -- use {'josa42/coc-lua', run = 'yarn install --frozen-lockfile'}
    use 'xolox/vim-misc'
    use 'airblade/vim-rooter'
    use 'tbastos/vim-lua'
    use 'lfilho/cosco.vim'
    use 'preservim/nerdcommenter'
    use 'junegunn/fzf.vim'
    use 'chiefnoah/neuron-v2.vim'
    use 'w0rp/ale'
    -- use {'neoclide/coc.nvim', run = 'yarn install --frozen-lockfile'}
    use 'mhinz/vim-startify'
    use 'ianks/vim-tsx'
    use 'liuchengxu/vim-which-key'
    use 'norcalli/nvim-colorizer.lua'
    use 'ctrlpvim/ctrlp.vim'
    use 'rbgrouleff/bclose.vim'
    use {'Shougo/denite.nvim', run = ':UpdateRemotePlugins'}
    use 'lilydjwg/colorizer'
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'
    use 'mattn/vim-lsp-settings'
    use 'prabirshrestha/vim-lsp'
    use 'vim-ctrlspace/vim-ctrlspace'
    use 'puremourning/vimspector'
end)
