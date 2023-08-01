" Клавиши
let mapleader=" "

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fv :Files ~/.vim/settings<CR>
nnoremap <leader>fn :Files ~/notes<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <Tab> :Buffers<CR>
nnoremap <leader>s :w <bar> :source %<CR>
nnoremap H <C-o>
nnoremap L <C-i>
vnoremap <silent> <C-y> :w !xclip -selection clipboard<CR>
nnoremap <leader>c :w <bar> :FloatermSend clear && python3 %<CR>:FloatermToggle<CR>
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next = '<F2>'
let g:floaterm_keymap_new = '<F3>'

