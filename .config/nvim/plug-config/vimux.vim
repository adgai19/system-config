let g:VimuxOrientation = "h"
let g:VimuxCloseOnExit = 1
nnoremap <leader>vj :call VimuxRunCommand("gradle test")<CR>
nnoremap <Leader>vx :VimuxInterruptRunner<CR>
nnoremap <Leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vp :VimuxPromptCommand<CR>
nnoremap <Leader>vq :VimuxCloseRunner<CR>
nnoremap <Leader>vp :call VimuxRunCommand("clear; python " . bufname("%"))<CR>
