" Плагины

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ap/vim-css-color'
Plugin 'sainnhe/gruvbox-material'
Plugin 'voldikss/vim-floaterm'
" Plugin 'bluz71/vim-moonfly-colors'

call vundle#end()

colorscheme gruvbox-material

" Vimwiki
let g:vimwiki_list = [{'path': '~/notes/',
	\ 'syntax': 'markdown', 'ext': '.md'}]

" FZF
let g:fzf_preview_window = []
let g:fzf_buffers_jump = 1

" vim-floaterm
let g:floaterm_title = 'Terminal-[$1]'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
