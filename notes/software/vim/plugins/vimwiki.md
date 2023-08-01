#VimWiki
[GitHub](https://github.com/vimwiki/vimwiki)
Справка `:h vimwiki`

С __VimWiki__ можно
- Организовывать записи
- Управлять TODO листами
- Писать документации
- Экспортировать в HTML

Поддерживается синтаксис [[/markup_language/markdown/index|Markdown]] и __MediaWiki__
- Заголовки `:h vimwiki-syntax-headers`
  ## Шесть уровней
- Цитаты? `:h vimwiki-syntax-blockquotes`
  >dsafsf `4<Space>`
- Списки
- Таблицы `:h vimwiki-syntax-tables`
	|   |   |
	|---|---|
	|   |   |
- Ссылки `:h vimwiki-syntax-links`
  [http](http://google.com) 
  [[/markup_language/markdown|viki]]
  [[file:~/.vimrc|file]]
  [[local:~/.vimrc|local]]
- Выделения `:h vimwiki-syntax-facetype`
  TODO DONE STARTED FIXME FIXED XXX  _Italic_ __Bold__ ___Italic+Bold___
- Комментарии
  %% Коментарий
- Горизонтальные линии `<hr />` 
  ----
- Тэги `:h vimwiki-syntax-tag`
  :tag: :tag:tag:tag:
- Имя вкладки html
  %title html page
- Список дел `:h vimwiki-todo-lists`
  * [ ] Task
- Блоки кода `code`
```vim
set params
```

## Установка
[Vundle](vundle) : `Plugin 'vimwiki/vimwiki'`
```vim
set nocompatible
filetype plugin on
syntax on
```

## Клавиши
Справка `:h vimwiki-mappings`
| Клавиши                | Действие                                     |
|------------------------|----------------------------------------------|
| `<leader>`ww           | Открыть главный wiki                         |
| `<leader>`wt           | Открыть главный wiki в табе                  |
| `<leader>`w`<leader>`w | Создать / Открыть wiki на сегодня            |
| `<leader>`w`<leader>`t | Создать / Открыть wiki на сегодня в табе     |
| `<leader>`w`<leader>`y | Создать / Открыть wiki на вчера              |
| `<leader>`w`<leader>`m | Создать / Открыть wiki на завтра             |
| `<leader>`ws           | Создать / Открыть wiki                       |
| `<leader>`wd           | Удалить текущий файл                         |
| `<leader>`wr           | Переименовать текущий файл                   |
| `<Enter>`              | Создать / Открыть ссылку                     |
| `<Shift><Enter>`       | Создать / Открыть ссылку в табе              |
| `<Ctrl><Enter>`        | Создать / Открыть ссылку в вертикальном табе |
| `<Backspace>`          | Перейти назад                                |
| `<Tab>` `<S-Tab>`      | Перемещаться по ссылкам в файле              |
| `<leader>`wh           | Конвертировать в HTML                        |
| `<leader>`whh          | Конвертировать в HTML и открыть              |
| `<leader>`wn           | Создать / Открыть wiki файл (полный путь)    |
| `=` `-`                | Добавить / Удалить уровень заголовка         |
| `[[` `]]`              | Перемещение по заголовкам                    |
| `gl-`                  | Создать список на слове                      |
| `<leader><Space>`      | Переключатель чекбокса списка дел            |

## Таблица
Справка `:h vimwiki-tables`
| Клавиша                | Действие                                |
|------------------------|-----------------------------------------|
| `<Tab>` `<Shift><Tab>` | Перейти в следущую / предыдущую колонку |
| `<Enter>`              | Создать новую колонку                   |

## Команды
Справка `:h vimwiki-commands`
| Команда :                     | Действие                                   |
|-------------------------------|--------------------------------------------|
| Vimwiki2HTML                  | Конвертировать в HTML                      |
| Vimwiki2HTMLBrowse            | Конвертировать в HTML и открыть в браузере |
| VimwikiAll2HTML               | Конвертировать все файлы в HTML            |
| VimwikiTable `columns` `rows` | Создать таблицу                            |
| VimwikiIndex                  | Отркыть index файл                         |
| VimwikiTabIndex               | Открыть index файл в табе                  |
| VimwikiUISelect               | Показать доступные wiki                    |
| VimwikiDiaryIndex             | Открыть ежедневный wiki                    |
| VimwikiMakeDiaryNote          | Открыть / Создать wiki на сегодня          |
| VimwikiTabMakeDiaryNote       | Открыть / Создать wiki на сегодня в табе   |
| VimwikiMakeYesterdayDiaryNote | Открыть / Создать wiki на вчера            |
| VimwikiMakeTomorrowDiaryNote  | Открыть / Создать wiki на завтра           |
| VimwikiFollowLink             | Перейти по ссылке                          |
| VimwikiGoBackLink             | Вернуться назад                            |
| VimwikiSplitLink              | Открыть / Создать ссылку в окне            |
| `reuse move_cursor`           | `reuse` если не 0 откроет в возможно       |
|                               | существующем разделенном окне              |
|                               | `move_cursor` если не 0 курсор             |
|                               | в переходит  новое открытое окно           |
| VimwikiVSplitLink             | Открыть / Создать ссылку в                 |
|                               | вертикальном окне                          |
| VimwikiTabnewLink             | Открыть / Создать ссылку в табе            |
| VimwikiNextLink               | Перейти к следующей ссылке (файл)          |
| VimwikiPrevLink               | Перейти к предыдущей ссылке (файл)         |
| VimwikiGoto                   | Открыть / Создать wiki                     |
| VimwikiDeleteFile             | Удалить текущий wiki                       |
| VimwikiRenameFile             | Переименовать текущий wiki                 |
| VimwikiNextTask               | Перейти к незаконченому заданию            |
| VimwikiToggleListItem         | Переключатель чекбокса on/off              |
| VimwikiToggleRejectedListItem | Переключатель чекбокса disabled/off        |
| VimwikiListChangeLevel        | Переключатель уровней элементов            |
| VWS `/pattern/`               | Найти и открыть                            |
| VWB `/pattern/`               | Найти и открыть в текущей вики             |
| VimwikiTableMoveColumnLeft    | Передвинуть колонку таблицы на лево        |
| VimwikiTableMoveColumnRight   | Передвинуть колонку таблицы на парво       |
| VimwikiGenerateLinks          |                                            |
| VimwikiDiaryGenerateLinks     |                                            |
| VimwikiDiaryNextDay           | Открыть wiki на следующий день             |
| VimwikiDiaryPrevDay           | Открыть wiki на предыдущий день            |
| VimwikiTOC                    | Создать или обновить таблицы контента?     |
| VimwikiCheckLinks             |                                            |
| VimwikiRebuildTags            | Пересобрать тэги метадаты                  |
| VimwikiSearchTags             | Найти все тэги                             |
| VimwikiGenerateTagLinks       | Создать или обновить тэги?                 |
| Параметры `tag tag ..`        |                                            |

## Конфигурация 
- Изменить путь до __wiki__ файлов
```vim
let g:vimwiki_list = [{ 'path': '~/notes/', }]
```
- Добавить поддержку синтаксиса __Markdown__
```vim
let g:vimwiki_list = [{ 'path': '~/notes/',
		\ 'syntax': 'markdown', 'ext': '.md' }]
```
- Выпадающий wiki
```vim
  let g:vimwiki_folding = 'value'
```
