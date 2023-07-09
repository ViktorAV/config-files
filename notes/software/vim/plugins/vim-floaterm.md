# Floaterm
8 Выпадающих терминалов в vim.
[GitHub](https://github.com/voldikss/vim-floaterm)

- [Команды](## Команды)
- [Опции](## Опции)
- [Клавиши](## Клавиши)
 
## Установка
Vundle: `Plugin 'voldikss/vim-floaterm'`

## Мои настройки
Файл `~/.vim/config/settings/mappings.vim`
```vim
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next = '<F2>'
let g:floaterm_keymap_new = '<F3>'
```
Файл `~/.vim/config/settings/plugins.vim`
```vim
" vim-floaterm
let g:floaterm_title = 'Terminal-[$1]'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
```

## Команды
__:FloatermNew__`!`, `--key=value`, `cmd`
  Создает новое окно терминала.
  __:FloatermNew!__ `python`, __:FloatermNew__ `python`.
  __'<,'>:FloatermNew__ Отправляет выделенные строки в терминал.
  `!` Использует `cmd` в `$SHELL`
  `--key=value`
    `--name=name` Изменяет имя терминала, для удобного обращения.
    `cwd` Изменяет текущую рабочую директорию.
    `silent` Не показывает окно.
    `disposable` После закрытия окна терминала, также закрывает процесс.
    `title` Заголовок терминала.
    `width` Ширина терминала
    `height` Высота терминала.
    `opener`
    `wintype`
    `position`
    `autoclose`
    `borderchars`
    `titleposition`
__:__`id`__FloatermToggle__`!` `--name=name`
  Скрывает или показывает окно терминала.
  `!` Все терминалы.
  `id` Номер буфера терминала.
  `--name=name` Имя терминала.
__:FloatermNext__
  Показывает следущее окно терминала.
__:FloatermPrev__
  Показывает предыдущее окно терминала.
__:FloatermFirst__
  Переходит в первый терминал.
__:FloatermLast__
  Переходит в последний терминал.
__:FloatermUpdate__ `--key=value`
  Обновляет опции терминала.
__:FloatermShow__`!` `--name=name`
  Показвает терминал.
  `!` Все терминалы.
  `--name=name` Имя терминала.
__:FloatermHide__`!` `--name=name`
  Скрывает терминал.
  `!` Все терминалы.
  `--name=name` Имя терминала.
__:__`id`__FloatermKill__`!` `--name=name`
  Уничтожает текущий терминал.
  `id` Номер буфера.
  `--name=name` Имя терминала.
  `!` Все терминалы.
__:FloatermSend__`!`, `--name=name`, `cmd`
  Отправляет команду или строки файла в терминал.
  `--name=name` Имя терминала.
  `cmd` Команда.

## Опции
__g:floaterm_____shell__ `string`
  Оболочка терминала.
  Default: `&shell`
__g:floaterm_____title__ `string`
  Название терминала.
  Default: `floaterm($1|$2)`
__g:floaterm_____wintype__ `string`
  Тип терминала.
  Default: `botright`
  `split vsplit leftabove aboveleft rightbelow belowright topleft botright`
__g:floaterm_____width__ `number`
  Ширина терминала.
  Default: `0.6`
__g:floaterm_____height__ `number`
  Высота терминала.
  Default: `0.6`
__g:floaterm_____position__ `string`
  Позиция терминала.
  Default: `center`
  `top bottom left right topleft topright bottomleft bottomright center auto random`
__g:floaterm_____borderchars__ `string`
  Текст(8) под терминалом.
  Default: `-|-|..`
__g:floaterm_____rootmarkers__ `list`
  Маркеры определяющие корневые директори для `--cwd=root`
  Default: `['.project', '.git', '.hg', '.svn', '.root']`
__g:floaterm_____giteditor__ `bool`
  `Whether to override $GIT_EDITOR in floaterm so git commands can open editor in the same inst`
  Default: `v:true`
__g:floaterm_____opener__ `string`
  Команда для открытия файла вне вима.
  Default: `split`
  `edit split vsplit tabe drop`
__g:floaterm_____autoclose__ `number`
  Закрывать терминал если работа будет выполнена.
  Default: `1`
  `0` Никогда не закрывать.
  `1` Закрывать если работа завершилась без ошибок.
  `2` Всегда закрывать.
__g:floaterm_____autohide__ `number`
  Скрывать терминалы, если переключаемся на следующий.
  Default: `1`
  `0` Никогда не скрывать.
  `1` Скрывать если позиции терминалов идентичны.
  `2` Всегда скрывать.
__g:floaterm_____autoinsert__ `bool`
  Заходить в мод `Terminal-mode` после открытия терминала.
  Default: `v:true`
__g:floaterm_____titleposition__ `string`
  Позиция заголовка терминала.
  Default: `left`
  `left center right`

## Клавиши
``vim
g:floaterm_keymap_new = ''
g:floaterm_keymap_prev = ''
g:floaterm_keymap_next = ''
g:floaterm_keymap_first = ''
g:floaterm_keymap_last = ''
g:floaterm_keymap_hide = ''
g:floaterm_keymap_show = ''
g:floaterm_keymap_kill = ''
g:floaterm_keymap_toggle = ''

nnoremap <silent> <F1> :FloatermToggle<CR>
tnoremap <silent> <F1> :FloatermToggle<CR>
nnoremap <silent> <F2> :FloatermNew<CR>
tnoremap <silent> <F2> :FloatermNew<CR>
```
