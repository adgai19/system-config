let g:dashboard_default_executive ='telescope'
  
let g:mapleader="\<Space>"

"let g:dashboard_custom_shortcut_icon['last_session'] = ' '
"let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
"let g:dashboard_custom_shortcut_icon['find_file'] = ' '
"let g:dashboard_custom_shortcut_icon['new_file'] = ' '
"let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
"let g:dashboard_custom_shortcut_icon['find_word'] = ' '
"let g:dashboard_custom_shortcut_icon['book_marks'] = ' '
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
