let $NVIM_COC_LOG_LEVEL = 'debug'
lua vim.lsp.set_log_level("debug")
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/.config/nvim/lsp.log')
let g:ale_disable_lsp = 1
"source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/augrups.vim
" source $HOME/.config/nvim/general/directory-create.vim
" source $HOME/.config/nvim/general/commands.vim
" source $HOME/.config/nvim/plug-config/dashboard.vim
source $HOME/.config/nvim/plug-config/nerdcommentor.vim
source $HOME/.config/nvim/plug-config/vim-lua-formatter.vim
source $HOME/.config/nvim/plug-config/vimux.vim
" source $HOME/.config/nvim/keys/newkeys.vim
source $HOME/.config/nvim/keys/vim-fugutive.vim
source $HOME/.config/nvim/plug-config/lspsaga.vim
" source $HOME/.config/nvim/keys/temp-keys.vim
source $HOME/.config/nvim/plug-config/vim-closetag.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
" source $HOME/.config/nvim/plug-config/dap.vim
" source $HOME/.config/nvim/plug-config/rainbow-parentheses.vim
" source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/vim-devicons.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/autoformat.vim
source $HOME/.config/nvim/plug-config/floterm.vim
" source $HOME/.config/nvim/plug-config/whiplash.vim
source $HOME/.config/nvim/plug-config/wilder.vim
source $HOME/.config/nvim/plug-config/vim-go.vim
" source $HOME/.config/nvim/plug-config/colors.vim
source $HOME/.config/nvim/plug-config/nvim-jdlts.vim
source $HOME/.config/nvim/general/lua_format.vim
source $HOME/.config/nvim/keys/quikfixlist.vim
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" lua require'plug-colorizer'
" lua require 'vim-icons'
lua require('plugins.telescope')
lua require('packerconfig')
lua require('plugins.lualine')
" lua require('treesitter')
lua require('lsp')
" lua require('jdlts')
lua require('plugins.neorg')
" lua require('dapsetup')
lua require('numb').setup()
" lua require('plugins.navigator')
" lua require('openSites')
" lua require('rustTools')
" lua require('debugger')
"lua require"surround".setup{}
set guifont=Fira\ Code\ Nerd\ Font:8

autocmd BufWritePost ~/.config/nvim/lua/packerconfig.lua source <afile> | PackerSync
