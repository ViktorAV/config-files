# Vim плагин комментарии
[GitHub](https://github.com/tpope/vim-commentary)
С __vim commentary__ можно
- Комментировать
  - Блоки
  - Строки
  - Параграфы
- Разкоментировать

## Установка
[Vundle](vundle): `Plugin 'tpope/vim-commentary'`

## Клавиши 
| Клавиша | Действие         |
|---------|------------------|
| gcc     | Строку           |
| gca     | Параграф         |
| gc      | Выделенное       |

## Конфигурация
Поддержка расширений файлов
```vim
autocmd Filetype apache setlocal commentstring=#\ %s
```
