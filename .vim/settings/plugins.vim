" Плагины

call vundle#begin()

" Plugin 'sainnhe/gruvbox-material'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ap/vim-css-color'
Plugin 'voldikss/vim-floaterm'
" Plugin 'bluz71/vim-moonfly-colors'
" Plugin 'sainnhe/everforest'
" Plugin 'sainnhe/sonokai'
" Plugin 'ayu-theme/ayu-vim'
" Plugin 'ajmwagar/vim-deus'
" Plugin 'sheerun/vim-polyglot'
" Plugin 'junegunn/goyo.vim'
" Plugin 'junegunn/limelight.vim'
" Plugin 'kyoz/purify'

call vundle#end()
set background=dark
colorscheme seashell

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

" goyo
" let g:goyo_width = 80
" let g:goyo_height = 85%
" let g:goyo_linenr = 0

" limelight
