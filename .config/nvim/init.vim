let $NVIM_COC_LOG_LEVEL = 'debug'
let g:ale_disable_lsp = 1
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/directory-create.vim
source $HOME/.config/nvim/general/commands.vim
source $HOME/.config/nvim/plug-config/dashboard.vim
source $HOME/.config/nvim/plug-config/vim-lua-formatter.vim
"source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/keys/newkeys.vim
source $HOME/.config/nvim/keys/vim-fugutive.vim
source $HOME/.config/nvim/keys/temp-keys.vim
source $HOME/.config/nvim/plug-config/coc-new.vim
source $HOME/.config/nvim/plug-config/vim-closetag.vim
source $HOME/.config/nvim/plug-config/dap.vim
source $HOME/.config/nvim/plug-config/rainbow-parentheses.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/vim-devicons.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/autoformat.vim
source $HOME/.config/nvim/plug-config/floterm.vim
source $HOME/.config/nvim/plug-config/whiplash.vim
source $HOME/.config/nvim/neovide/settings.vim
"source $HOME/.config/nvim/vundle/plugins.vim
source $HOME/.config/nvim/general/lua_format.vim
source $HOME/.config/nvim/keys/quikfixlist.vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
lua require'plug-colorizer'
lua require 'vim-icons'
lua require('telescopeconfig')
lua require('packerconfig')
lua require('rustTools')
lua require('debugger')
lua require('treesitter')
lua require"surround".setup{}
"lua require('colorscheme')
"lua require ('packages-install')
set guifont=Fira\ Code\ Nerd\ Font:8
