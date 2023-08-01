hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "seashell"

" hi Normal guibg=Black guifg=seashell ctermfg=White
hi NonText guifg=LavenderBlush ctermfg=LightMagenta
hi DiffDelete guibg=DarkRed guifg=Black ctermbg=DarkRed ctermfg=White
hi DiffAdd guibg=DarkGreen ctermbg=DarkGreen ctermfg=White
hi DiffChange guibg=Gray30 ctermbg=DarkCyan ctermfg=White
hi DiffText gui=NONE guibg=DarkCyan ctermbg=DarkCyan ctermfg=Yellow
hi Comment guifg=LightBlue
hi PreProc ctermfg=Magenta
hi StatusLine guibg=#1f001f guifg=DarkSeaGreen cterm=NONE ctermfg=White ctermbg=DarkGreen
hi StatusLineNC guifg=Gray
hi VertSplit guifg=Gray
hi Type gui=NONE
hi Identifier guifg=Cyan
hi Statement guifg=brown3 ctermfg=DarkRed
hi Search guibg=Gold3 ctermfg=White
hi Folded guibg=gray20
hi FoldColumn guibg=gray10

hi Function guifg=Yellow ctermfg=Yellow
hi vimFunction guifg=Yellow ctermfg=Yellow
hi vimUserFunc guifg=Yellow ctermfg=Yellow
hi StorageClass guifg=Yellow ctermfg=Yellow
hi htmlArg guifg=Yellow ctermfg=Yellow
hi Structure guifg=Yellow ctermfg=Yellow
hi Typedef guifg=Yellow ctermfg=Yellow
hi Question guifg=Yellow ctermfg=Yellow
" Original values:
"hi Constant guifg=DeepPink
"hi PreProc guifg=Magenta ctermfg=Magenta
" Ссылки
hi Special ctermfg=Red
hi vimCmdSep ctermfg=Red
hi UnderLined ctermfg=Red
hi ErrorMsg ctermfg=Red
hi Directory ctermfg=Red
hi diffFile ctermfg=Red
hi WarningMsg ctermfg=Red
hi diffIsA ctermfg=Red
hi diffBDiffer ctermfg=Red
hi diffCommon ctermfg=Red
hi diffDiffer ctermfg=Red
hi diffIdentical ctermfg=Red
hi diffNoEOL ctermfg=Red
hi diffOnly ctermfg=Red


set numberwidth=4
set foldcolumn=0
" set nonumber
hi FoldColumn ctermbg=none
hi LineNr ctermfg=0 ctermbg=none
hi NonText ctermfg=0
