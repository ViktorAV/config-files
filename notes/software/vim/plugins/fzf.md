# Vim плагин fzf
[GitHub](https://github.com/junegunn/fzf)
Быстро ищет файлы по относительным именам в выпадающем списке.
Доступен в __bash__, __tmux__(fzf-tmux) и в других программах

## Установка
Клонировать репозиторий GitHub в директорию __~/.fzf__.
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
Запустить скрипт установки `.fzf/install`
[Vundle](vundle): `Plugin 'junegunn/fzf'`

## Команды
Открыть выпадающий список файлов в папке
```bash
find * -type f | fzf > selected
vim $(fzf --height 40%)
```

## Клавиши
| Клавиша        | Описание            |
|----------------|---------------------|
| `<Ctrl>`k/j    | Двигаться по списку |
| `<Ctrl>`p/n    |                     |
| `<Ctrl>`c      | Закрыть             |
| `<Ctrl>`G      |                     |
| `<Esc>`        |                     |
| `<Tab>`        | Выделить            |
| `<Shift><Tab>` |                     |

## Конфигурация
Опции
```vim
--height " высота
--layout=reverse " список в обратном направлении
--border " графическое окружение
--inline-info " счетчик файлов в строке поиска
```
Открыть список с размером 40%, в обратном направлении, в граф окне
`export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'`

Установить тригер для списка
`export FZF_COMPLETION_TRIGGER='**'`

## Синтаксис
| Токен | Описание                           |
|-------|------------------------------------|
| str   | Файлы имена которых включают 'str' |
| 'str  | Файлы включающие                   |
| ^str  | Начинающиеся с                     |
| .str$ | Заканчивающиеся на                 |
| !     | Обратное                           |
Найдет имена начинающиеся на str и заканчивающиеся на go или py
`^str go$ | py$`

## Командная оболочка
Автодополнение
`vim ~/**<Tab>`
`cd **<Tab>`
`kill -9 **<Tab>`
`ssh **<Tab>`
`telnet **<Tab>`
`unset **<Tab>`
`unalias **<Tab>`
`export **<Tab>`
