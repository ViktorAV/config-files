# Vim плагин goyo
[GitHub](https://github.com/junegunn/goyo.vim)
Отключает всё 'лишнее' и ставит текст по центру

## Установка
[Vundle](vundle): `Plugin 'junegunn/goyo.vim'`

## Команды
| Команда | Описание  |
|---------|-----------|
| Goyo    | Вкл/Выкл  |
| Goyo!   | Выключить |

Параметры `:Goyo`
```vim
" Width
Goyo 120

" Height
Goyo x30

" Width Height
Goyo 120x30

" В процентах
Goyo 120x50%

" В процентах с offset
Goyo 50%+25%x50%-25%
```


## Конфигурация
```vim
g:goyo_width=80
g:goyo_height=85%
g:goyo_linenr=0
```

Изменение __событий__
```vim
function! s:goyo_enter()
    if executable('tmux') && strlen($TMUX)
	silent !tmux set status off
	silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
    endif
    set noshowmode
    set noshowcmd
    set scrolloff=999
Limelight
" ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
      silent !tmux set status on
      silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction
  
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
```
