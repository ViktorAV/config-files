# Окна и Панели tmux
__Окна tmux__ занимают всё пространство на каждой вкладке.
К окнам можно подключиться, разделить вертикально и горизонтально, на панели,
каждая панель окна это отдельный терминал.
Индекс __сессий__, __панелей__ и __окон__ начинается с 0

## Режимы панели
1. Copy mode (Режим копирования) `-eHMqu` `-s src-pane` `-t target-pane`
  Позволяет копировать текст или историю в окнах в __paste buffer__
  `copy-mode` `copy-mode-vi` команда входа в режим копирования или клавиша `[`
  `paste-buffer` команда вставка текста или клавиша `]`
  В режиме копирования отображается индикатор в правом верхнем углу панели
  с информацией о текущей позиции и количеством строк в истории
  __Комманды доступные в этом режиме__
3. View mode   (Режим отображения)
  Этот режим схож с __Copy mode__ но этот режим вызывается
  командами такими как __list-keys__ и прочими показывающие отображение
4. Choose mode (Режим выбора)
  Режим выбора из списка это может быть сессия, клиент, окно или панель
  __choose-buffer__, __choose-client__, __choose-tree__ команды его вызова

## Команды 
- __new-window__
  Сокращение __neww__
  Добавить окно
- __split-window__
  Сокращение __splitw__
  Разделить окно
- __kill-window__
  Сокращение __killw__
  Закрыть окно 
- __resize-pane__
  Управление размером панели
- __select-pane__
  Выбрать активную панель
- __rotate-window__
- __swap-pane__
- __select-layout__, __next-layout__
  Кнопка `space` по умолчанию
  Режимы отображения панелей
  - __even-horizontal__ слева на право
  - __even-vertical__ сверху вниз
  - __main-horizontal__ 
  - __main-vertical__
  - __tiled__ как получится поместиться
- __break-pane__ `-abdP` `-F format` `-n window-name` `-s src-pane` `-t dst-window`
  Сокращение __breakp__
  Забрать панель в другое окно
- __capture-pane__ `-aepPqCJN` `-b buffer-name` `-E end-line` `-S start-line` `-t target-pane`
  Сокращение __capturep__
  Захватить контент с панели
- __choose-client__ `-NrZ` `-F format` `-f filter` `-K key-format` `-O sort-order`
  `-t target-pane` `[template]`
  Выбор клиента из списка
- __choose-tree__ `-GNrswZ` `-F format` `-K key-format` `-O sort-order` `-t target-pane`
  Поместить панель в дерево выбора где могут быть выбраны сессия, окно и панель 
- __customize-mode__ `-NZ` `-F format` `-f filter` `-t target-pane` `[template]`
  Переместить панель в режим изменения (опции, клавиши)
- __display-panes__ `-bN` `-d duration` `-t target-client` `[template]`
  Сокращение __displayp__
  Показать индикатор каждой панели с параметрами
  __display-panes-colour__ __display-panes-active-colour__
- __find-window__ `-iCNrTZ` `-t target-pane` `match-string`
  Сокращение __findw__
  Найти окно
- __join-pane__ `-bdfhv` `-l size` `-s src-pane` `-t dst-pane`
  Сокращение __joinp__
  Как и __split-window__ но не создает новую панель
- __kill-pane__ `-a` `-t target-pane`
  Сокращение __killp__
  Закрыть панель
- __kill-window__ `-a` `-t target-window`
  Сокращение __killp__
  Закрыть окно
- __last-pane__ `-deZ` `-t target-window`
  Сокращение __lastp__
  Выбрать последнюю выбранную панель
- __last-window__ `-t target-session`
  Сокращение __lastw__
  Выбрать последнее выбранное окно
- __link-window__ `-abdk` `-s src-window` `-t dst-window`
  Сокращение __linkw__
- __list-panes__ `-as` `-F format` `-f filter` `-t target`
  Сокращение __lsp__
  Отобразить список панелей
- __list-windows__ `-a` `-F format` `-f filter` `-t target-session`
  Сокращение __lsw__
  Отобразить список окон
- __move-pane__ `-bdfhv` `-l size` `-s src-pane` `-t dst-pane`
  Сокращение __movep__
  Тоже самое что и __join-pane__
- __move-window__ `-abrdk` `-s src-window` `-t dst-window`
  Сокращение __movew__
  Тоже самое что и __link-window__ с небольшими изменениями
- __new-window__ `-abdkPS` `-c start-directory` `-e environment` `-F format`
  `-n window-name` `-t target-window` `[shell-command]`
  Сокращение __neww__
  Создать новое окно
- __next-layout__, __previous-layout__`-t target-window`
  Сокращение __nextl__, __prevl__
  Следующий, Предыдущий вид отображения
- __next-window__, __previous-window__ `-a` `-t target-session`
  Сокращение __next__, __prev__
  Перейти на следущее, предыдущее окно
- __pipe-pane__ `-IOo` `-t target-pane` `[shell-command]`
  Сокращение __pipep__
- __rename-window__ `-t target-window` `name`
  Сокращение __renamew__
  Переименовать окно
- __resize-pane__ `-DLMRTUZ` `-t target-pane` `-x width` `-y height` `adjustment`
  Сокращение __resizep__
  Изменить размеры панели
- __resize-window__ `-aADLRU` `-t target-window` `-x width` `-y height` `adjustment`
  Сокращение __resizew__
  Изменить размеры панели
- __respawn-pane__ `-k` `-c start-directory` `-e environment` `-t target-pane` `[shell]`
  Сокращение __respawnp__
  Реактивация панели (__remain-on-exit__)
- __respawn-window__ `-k` `-c start-directory` `-e environment` `-t target-pane` `[shell]`
  Сокращение __respawnw__
  Реактивация окна
- __rotate-window__ `-DUZ` `-t target-window`
  Сокращение __rotatew__
  Переместить окно
- __select-layout__ `-Enop` `-t target-pane` `[layout-name]`
  Сокращение __selectl__
  Выбрать отображение окна
- __select-pane__ `-DdeLlMmRUZ` `-T title` `-t target-pane`
  Сокращение __selectp__
  Выбрать панель как активную
- __select-window__ `-lnpT` `-t target-window`
  Сокращение __selectw__
  Выбрать окно
- __split-window__ `-bdfhIvPZ` `-c start-directory` `-e environment` `-l size`
  `-t target-pane` `-F format` `[Shell-command]`
  Сокращение __splitw__
  Разделить панель и создать новую
- __swap-pane__ `-dDUZ` `-s src-pane` `-t dst-pane`
  Сокращение __swapp__
  Поменять панели
- __swap-window__ `-d` `-s src-window` `-t dst-window`
  Сокращение __swap-window__
  Тоже самое что и __link-window__ только источник окна изменен
- __unlink-window__ `-k` `-t target-window`
  Сокращение __unlinkw__

## Клавиши
### copy-mode
| Команда                     | Клавиша |
|-----------------------------|---------|
| append-selection            |         |
| append-selection-and-cancel | A       |
| back-to-identation          | ^       |
| begin-selection             | Space   |
| bottom-line                 | L       |
| cancel                      | q       |
| clear-selection             | Esc     |
| copy-end-of-line            | D       |
| copy-line                   |         |
| copy-pipe                   |         |
| copy-pipe-no-clear          |         |
| copy-pipe-and-cancel        |         |
| copy-selection              |         |
| copy-selection-no-clear     |         |
| copy-selection-and-cancel   | Enter   |
| cursor-down                 | j       |
| cursor-down-and-cancel      |         |
| cursor-left                 | h       |
| cursor-right                | l       |
| cursor-up                   | k       |
| end-of-line                 | $       |
| goto-line                   | :       |
| halfpage-down               | C-d     |
| halfpage-down-and-cancel    |         |
| halfpage-up                 | C-u     |
| history-bottom              | G       |
| history-top                 | g       |
| jump-again                  | ;       |
| jump-backward               | F       |
| jump-forward                | f       |
| jump-reverse                | ,       |
| jump-to-backward            | T       |
| jump-to-forward             | t       |
| jump-to-mark                | M-x     |
| middle-line                 | M       |
| next-matching-bracket       | %       |
| next-paragraph              | }       |
| next-space                  | W       |
| next-space-end              | E       |
| next-word                   | w       |
| next-word-end               | e       |
| other-end                   | o       |
| page-down                   | C-f     |
| page-down-and-cancel        |         |
| page-up                     | C-b     |
| pipe                        |         |
| pipe-no-clear               |         |
| pipe-and-cancel             |         |
| previous-matching-bracket   |         |
| previous-paragraph          | {       |
| previous-space              | B       |
| previous-word               | b       |
| rectangle-on                |         |
| rectangle-off               |         |
| rectangle-toggle            | v       |
| refresh-from-pane           | r       |
| scroll-down                 | C-e     |
| scroll-down-and-cancel      |         |
| scroll-up                   | C-y     |
| search-again                | n       |
| search-backward             | ?       |
| search-backward-incremental |         |
| search-backward-text        |         |
| search-forward              | /       |
| search-forward-incremental  |         |
| search-forward-text         |         |
| search-reverse              | N       |
| select-line                 | V       |
| select-word                 |         |
| set-mark                    | X       |
| start-of-line               | 0       |
| stop-selection              |         |
| top-line                    | H       |
### customize-mode
| Клавиша | Описание                            |
|---------|-------------------------------------|
| Enter   | Выбрать                             |
| Up      | Вперед                              |
| Down    | Назад                               |
| +       | Expand                              |
| -       | Collapse                            |
| M-+     | Expand all                          |
| M--     | Collapse all                        |
| s       | Изменить значение                   |
| S       | Изменить значение глобально         |
| W       | Изменить значение окна или панели   |
| d       | Значение по умолчанию               |
| D       | Значение по умолчанию для выбранных |
| u       | Снять значение                      |
| U       | Снять значение для выбранного       |
| C-s     | Искать по имени                     |
| n       | Повторить последний поиск           |
| t       | Включить если выбранно              |
| T       | Снять выбор со всего                |
| C-t     | Выбрать всё                         |
| f       | Ввести формат для фильтрации        |
| v       | Режим просмотра                     |
| q       | Выйти                               |

### choose-tree
| Клавиша | Описание                                 |
|---------|------------------------------------------|
| Enter   | Выбрать                                  |
| Up      | Предыдущий                               |
| Down    | Следующий                                |
| +       | Expand                                   |
| -       | Collapse                                 |
| M-+     | Expand всё                               |
| M--     | Collapse всё                             |
| x       | Закрыть                                  |
| X       | Закрыть выбранные                        |
| <       | Прокрутить превью влево                  |
| >       | Прокрутить превью вправо                 |
| C-s     | Поиск по имени                           |
| m       | Маркировать панель                       |
| M       | Снять маркировку                         |
| n       | Повторить последний поиск                |
| t       | Включить если выбран                     |
| T       | Снять выбор со всего                     |
| C-t     | Выбрать всё                              |
| :       | Запустить команду для каждого выбранного |
| f       | Ввести формат фильтра                    |
| H       | Перейти в начало панели                  |
| O       | Изменить поле сортировки                 |
| r       | Обратная сортировка                      |
| v       | Включить превью                          |
| q       | Выйти                                    |

### choose-client
| Клавиша | Описание                       |
|---------|--------------------------------|
| Enter   | Выбрать                        |
| Up      | Предыдущий                     |
| Down    | Следующий                      |
| C-s     | Поиск                          |
| n       | Повторить последний поиск      |
| t       | Переключить если клиент tagged |
| T       | Снять выбор всех клиентов      |
| C-t     | Выбрать всех клиентов          |
| d       | Отсоединить клиента            |
| D       | Отсоеденить выбранных клиентов |
| x       | Отсоеденить и HUP              |
| X       | Отсоеденить и HUP выбранных    |
| z       | Заморозить                     |
| Z       | Заморозить выбранных           |
| f       | Ввести формат для фильтрации   |
| O       | Изменить поле сортировки       |
| r       | Сортировка в обратном порядке  |
| v       | Просмотреть                    |
| q       | Выйти                          |
