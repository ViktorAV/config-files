"#!bash

set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name='trac'

highlight! Orange guifg=#af835f guibg=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
highlight! Orange_S guifg=#dfaf87 guibg=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
highlight! Orange_D guifg=#af5f00 guibg=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
highlight! Orange_DR guifg=#af5f00 guibg=NONE gui=reverse ctermfg=137 ctermbg=NONE cterm=NONE
highlight! Red_S guifg=#af8787 guibg=NONE gui=NONE ctermfg=138 ctermbg=NONE cterm=NONE
highlight! Red_D guifg=#875f5f guibg=NONE gui=NONE ctermfg=95 ctermbg=NONE cterm=NONE
highlight! Red_R guifg=#af5f5f guibg=#121212 gui=reverse ctermfg=131 ctermbg=233 cterm=reverse
highlight! Red_DR guifg=#dfdfaf guibg=#875f5f gui=NONE ctermfg=187 ctermbg=95 cterm=NONE
highlight! Cyan guifg=#87afaf guibg=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
highlight! Cyan_DR guifg=#005f5f guibg=NONE gui=reverse ctermfg=23 ctermbg=NONE cterm=NONE
highlight! Grey guifg=#ff0000 guibg=NONE gui=NONE ctermfg=102 ctermbg=NONE cterm=NONE
highlight! Green guifg=#87875f guibg=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
highlight! Green_R guifg=#87875f guibg=NONE gui=reverse ctermfg=30 ctermbg=NONE cterm=NONE
highlight! Yellow_S guifg=#dfdfaf guibg=NONE gui=NONE ctermfg=187 ctermbg=NONE cterm=NONE
highlight! Blue guifg=#ff0000 guibg=NONE gui=NONE ctermfg=Blue ctermbg=NONE cterm=NONE

highlight! link Type Orange
highlight! link vimAutoCmdSfxList Orange

highlight! link MoreMsg Orange_S
highlight! link Macro Orange_S
highlight! link PreCondit Orange_S
highlight! link PreProc Orange_S
highlight! link Title Orange_S
highlight! link htmlItalic Orange_S
highlight! link cssIdentifier Orange_S
highlight! link cssClassName Orange_S
highlight! link Iclude Orange_S
highlight! link Define Orange_S

highlight! link Number Orange_D
highlight! link diffIndexLine Orange_D
highlight! link Character Orange_D
highlight! link Boolean Orange_D
highlight! link Float Orange_D

highlight! link Special Red
highlight! link vimCmdSep Red
highlight! link UnderLined Red
highlight! link ErrorMsg Red
highlight! link Directory Red
highlight! link diffFile Red
highlight! link WarningMsg Red
highlight! link diffIsA Red
highlight! link diffBDiffer Red
highlight! link diffCommon Red
highlight! link diffDiffer Red
highlight! link diffIdentical Red
highlight! link diffNoEOL Red
highlight! link diffOnly Red

highlight! link Constant Red_S

highlight! link Function Red_D
highlight! link vimFunction Red_D
highlight! link vimUserFunc Red_D
highlight! link StorageClass Red_D
highlight! link htmlArg Red_D
highlight! link Structure Red_D
highlight! link Typedef Red_D
highlight! link Question Red_D

highlight! link Error Red_R
highlight! link IncSearch Red_R
highlight! link DiffDelete Red_R
highlight! link diffRemoved Red_R

highlight! link Visual Red_DR
highlight! link Search Red_DR
highlight! link PmenuSel Red_DR
highlight! link MatchParen Red_DR
highlight! link WildMenu Red_DR

highlight! link Identifier Cyan
highlight! link vimAutoEventList Cyan

highlight! link DiffChange Cyan_DR
highlight! link diffChanged Cyan_DR

highlight! Statement ctermfg=Blue
highlight! Label guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! Operator guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! Conditional guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! htmlStatement guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! Repeat guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! Keyword guifg=#74b2ff
highlight! Exception guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39
highlight! netrwExe guifg=#74b2ff guibg=NONE gui=NONE cterm=NONE ctermfg=39

highlight! link Comment Green

highlight! link SpecialComment Green_R
highlight! link vimCommentTitle Green_R
highlight! link DiffAdd Green_R
highlight! link diffAdded Green_R
highlight! link DiffText Green_R
highlight! link Todo Green_R
highlight! link ModeMsg Yellow_S

highlight! link Normal Green
highlight! link String Green
" highlight CursorLineNR guifg=# guibg=# gui=NONE ctermfg= ctermbg= cterm=NONE
highlight! link StatusLine Green
highlight! link StatusLineNC Green
highlight! link StatusLineTerm Green
highlight! link StatusLineTermNC Green

highlight! link Pmenu Green
highlight! link PmenuSbar Green
highlight! link PmenuThumb Green
highlight! link TabLineSel Green
highlight! link TabLine Green
highlight! link TabLineFill Green


highlight! link CursorLine Green
highlight! link CursorColumn Green
highlight! link ColorColumn Green
highlight! link Folded Green
highlight! link VertSplit Green
highlight! link LineNR Green
highlight! link FoldColumn Green
highlight! link SignColumn Green
highlight! link NonText Green
highlight! link SpecialKey Green
highlight! link Terminal Green

" highlight SpellBad guifg=#ff0000 guibg=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
" highlight SpellLocal guifg=#5f875f guibg=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
" highlight SpellCap guifg=#87afff guibg=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
" highlight SpellRare guifg=#d75f00 guibg=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE

highlight! link VisualNOS Green
highlight! link Cursor Green
