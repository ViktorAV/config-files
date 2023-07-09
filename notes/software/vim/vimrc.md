# Настройка .vimrc
- [Структура файлов](## Структура файлов)
- [Команды](## Команды)
- [Параметры](## Параметры)
- [Клавиши](## Клавиши)

Vim ищет файл конфигурации __.vimrc__ в этих назначениях:
- __$VIMINIT__
- __$HOME/.vimrc__
- __$HOME/.vim/vimrc__
- __$EXINIT__
- __$HOME/.exrc__
- __$VIMRUNTIME/defaults.vim__

## Структура файлов
Основная директория: `~/.vim`.
Файл __.vimrc__ `~/.vim/vimrc` содержит:
```vim
source $HOME/.vim/settings/plugins.vim
source $HOME/.vim/settings/configs.vim
source $HOME/.vim/settings/functions.vim
source $HOME/.vim/settings/plugins.vim
```
Директория конфигурации `~/.vim/settings/` содержит:
- `plugins.vim`
- `configs.vim`
- `functions.vim`
- `mappings.vim`

## Настройка копирования в буфер обмена
Установите пакет __xclip__.
Добавьте бинд в `.vimrc`.
```vim
vnoremap <silent> <C-y> :w !xclip -selection clipboard
```

## Команды
- __:source__ `%` Выполняет текущий файл в Vim. (устанавливает настройки)
- __:PluginInstall__ Устанавливает плагины.
- __:PluginClean__ Удаляет не используемые плагины.

## Параметры
Синтаксис: __set__ `param` `value`
- `relativenumber number`

## Клавиши
`<CR>` = Enter.
`let mapleader = "\<space>"` Установить лидер клавишу.
`<leader>` = Лидер клавиша.
`:call` = Вызов функции.
__nnoremap__ Устанавливает клавишу для нормального режима.
__inoremap__ Устанавливает клавишу для режима ввода.
Синтаксис: __nnoremap__ `<C-key>` `:cmd<CR>`
