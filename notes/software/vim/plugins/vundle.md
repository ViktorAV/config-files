# Мененджер плагинов Vundle
[GitHub](https://github.com/VundleVim/Vundle.vim)
Справка `:h vundle`
Устанавливает и обновляет плагины из __GitHub__

## Загрузка
Клонируем __Git__ в `~/.vim/bundle/Vundle.vim`
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Конфигурация 
Файл `~/.vimrc`
```vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
```

## Команды
| Команда      | Действие           |
|--------------|--------------------|
| :PlugInstall | Установить плагины |
