let $NVIM_COC_LOG_LEVEL = 'debug'
let g:ale_disable_lsp = 1
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/commands.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/coc-new.vim
source $HOME/.config/nvim/plug-config/vim-closetag.vim
source $HOME/.config/nvim/plug-config/rainbow-parentheses.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/vim-devicons.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/telescope.vim
colorscheme gruvbox
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd FileType javascript set formatprg=prettier\ --stdin
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~ '\s'
"endfunction
set termguicolors
set background=dark
lua require'plug-colorizer'
"lua require'telescope-settings'
inoremap <silent><expr> <Tab>
                  \ pumvisible() ? "\<C-n>" :
                  \ <SID>check_back_space() ? "\<Tab>" :
                  \ coc#refresh()
"autocmd VimEnter * NERDTree | wincmd p
"highlight Normal ctermbg=None
let g:python3_host_prog="/usr/bin/python3"
"set guifont=Fira\ Code\ Nerd\ Font\ 8
"set guifont=DroidSansMono\ Nerd\ Font\ 11
noremap <F3> :Autoformat<CR>
