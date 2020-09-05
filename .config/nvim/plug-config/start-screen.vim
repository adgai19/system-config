let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_bookmarks = [{'c':'~/.config/i3/config'},{'i':'~/.config/nvim'},{'t':'~/.tmux.conf'},{"k":'~/.config/kitty/kitty.conf'},{'a':'~/.config/alacritty/alacritty.yml'},{'f':'~/.config/fish'}]
let g:startify_session_autoload = 1
"let g:startify_custom_header = [
"      \'               .-.                                .-.                   .-.              _  .-.                                          .-.            ',
"      \'               : :                               .' `.                  : :             :_;.'.'                                         .' `.           ',
"     \'.-..-..-. .--. : :   .--.  .--. ,-.,-.,-. .--.   `. .' .--.    .--.   .-' : .--.  .--.  .-.`-'  .--.    .--.  .--. ,-.,-.,-..---. .-..-.`. .' .--. .--. ',
"      \': `; `; :' '_.': :_ '  ..'' .; :: ,. ,. :' '_.'   : : ' .; :  ' .; ; ' .; :' .; :' .; ; : :    `._-.'  '  ..'' .; :: ,. ,. :: .; `: :; : : : ' '_.': ..'',
"      \'`.__.__.'`.__.'`.__;`.__.'`.__.':_;:_;:_;`.__.'   :_; `.__.'  `.__,_;`.__.'`._. ;`.__,_;:_;    `.__.'  `.__.'`.__.':_;:_;:_;: ._.'`.__.' :_; `.__.':_;  ',
"      \'                                                                            .-. :                                           : :                         ',
"      \'                                                                            `._.'                                           :_;                         ',
"     \]

