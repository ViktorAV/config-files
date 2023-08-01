# Мененджер терминалов Tmux
NAMES AND TITLES
Справка `man tmux`

- [Окна и панели](window_and_pane)
- [Опции](options)

__Tmux__ (terminal multiplexer) это приложение-мультиплексор
терминала для эффективного управления несколькими сессиями
терминала в одном окне. 
__Статус линия tmux__ поддерживает ввод интерактивных команд
показывает информацию по текущей сессии, время и прочую
информацию. Она конфигурируемая
__Tmux сессии__ выживают после отключения от __SSH__ чтобы
переподключиться к сессии используется комманда __attach__
Сессии существуют как клиенты для единого сервера,
они комуницируют посредством сокета в __/tmp__

Tmux может
- Работать с несколькими сессиями в одном окне
- Сохранять сессии (подключения, процессы)
- Работать по _SSH_
- Совместно работать по сети
- Отправлять нажатие клавиш в окна
- Разделять, перемещать, изменять _окна_
- Работать в фоне после отключения (detach)


## Перехваты (hook)
- __set-hook__ `-agpRuw` `t -target-pane` `hook-name` `command`
  Без флага `-R` поставит хук по умолчанию
  с флагом - запустит хук немедленно
  __set-hook__ `-g pane-mode-changed[42] 'set -g status-left-style bg=red'`
- __show-hooks__ `-gpw` `-t target-pane`
  Показать хуки, флаги теже что и для __set-option__
  __Функции для перехвата__
  alert-activity           alert-bell         alert-silence
  client-attached          client-detached    client-resized                   
  client-session-changed   pane-died          pane-exited                      
  pane-focus-in            pane-focus-out     pane-set-clipboard               
  session-created          session-closed     session-renamed                  
  window-linked            window-renamed     window-unlinked                  

## Форматирование
Применимо к командам поддерживающим флаг форматирования `-F format`
Поддерживают
- регулярные выражения `#{r:}`
- Поиск `#{m/ri:*mtext*, }` + регулярные + игнор case
Синтаксис строк форматирования `#{ }`, `#{session_name}`
`#{?session_attached, ifyes, ifno}`
`#{?pane_in_mode, #[fg=white#, bg=red], #[fg=red#, bg=white]}#W`
Сравнение строк `[==, != < > <= >= || &&]`
`#{==:#{host}, myhost}` = 1 если запущено на `myhost`
__Аттрибуты__
active_window_index	alternate_on		alternate_saved_x
alternate_saved_y	buffer_created		buffer_name
buffer_sample		buffer_size		client_activity
client_cell_height	client_cell_width	client_control_mode
client_created		client_discarded	client_flags
client_height		client_key_table	client_last_session
client_name		client_pid		client_prefix
client_readonly		client_session		client_termfeatures
client_termname		client_termtype		client_tty
client_utf8		client_width		client_written
command			command_list_alias	command_list_name
command_list_usage	config_files		copy_cursor_line
copy_cursor_word	copy_cursor_x		copy_cursor_y
current_file		cursor_character	cursor_flag
cursor_x		cursor_y		history_bytes
history_limit		history_size		hook
hook_pane		hook_session		hook_session_name
hook_window		hook_window_name	host
host_short		insert_flag		keypad_cursor_flag
keypad_flag		last_window_index	line
mouse_all_flag		mouse_any_flag		mouse_button_flag
mouse_line		mouse_sgr_flag		mouse_standard_flag
mouse_utf8_flag		mouse_word		mouse_x
mouse_y			origin_flag		pane_active
pane_at_bottom		pane_at_left		pane_at_right
pane_at_top		pane_bg			pane_bottom
pane_current_command	pane_current_path	pane_dead
pane_dead_status	pane_fg			pane_format
pane_height		pane_id			pane_in_mode
pane_index		pane_input_off		pane_last
pane_left		pane_marked		pane_marked_set
pane_mode		pane_path		pane_pid
pane_pipe		pane_right		pane_search_string
pane_start_command	pane_synchronized	pane_tabs
pane_title		pane_top		pane_tty
pane_width		pid			rectangle_toggle
scroll_position		scroll_region_lower	scroll_region_upper
search_match		search_present		selection_active
selection_end_x		selection_end_y		selection_present
selection_start_x	selection_start_y	session_activity
session_alerts		session_attached	session_attached_list
session_created		session_format		session_group
session_group_attached	session_group_attached_list	session_group_list
session_group_many_attached	session_group_size	session_id
session_last_attached	session_many_attached	session_marked
session_name		session_path		session_stack
session_windows		socket_path		start_time
version			window_active		window_active_clients
window_active_clients_list	window_active_sessions
window_active_sessions_list	window_activity	window_activity_flag
window_bell_flag	window_bigger		window_cell_height
window_cell_width	window_end_flag		window_flags
window_raw_flags	window_format		windhow_height
window_id		window_index		window_last_flag
window_layout		window_linked		window_linked_sessions
window_linked_sessions_list	window_marked_flag	window_name
window_offset_x		window_offset_y		window_panes
window_silence_flag	window_stack_index	window_start_flag
window_visible_layout	window_width	window_zoomed_flag  wrap_flag

## Стили
`fg=yellow bold underscore link`
`bg=black,fg=default,noreverse`

- __fg=__`colour`
- __bg__=`colour`
- __none__
- __acs, bright(bold), dim, underscore, blink, reverse, hidden, italics__
  __overline, strikethough, double-underscore, curly-underscore__
  __doted-underscore, dashed-underscore__ и с префиксом __no__ для каждого
- ___noalign__, __align=__`left | centre | right ` 
- __fill__=`colour`
  Заполнить задний фон цветом
- __nolist__, __list=__`focus | marker | right-marker`
- __push-ddefault__, __pop-default__
- __norange__, __range=__`left | right | (window|x)`

## Опции запуска
Можно написать свои опции
`tmux опция параметры`
- __target-client__
  Это имя клиента, файл терминала например `/dev/tty1` или `tty1`
- __target-session__
  Префиксер `$`
  Именем сессии может быть:
  - Префиксер сессии с `$`
  - Имя сессии (команда __list-sessions__)
- __target-window__ или __src-window__ или __dst-window__
  Префиксер `@`
  Определяет окно из __session:window__
  - Индекс окна, например `session:1`
  - ID окна `@1`
  - Имя окна, `session:name`
  Токены для опеределения окна:
    - `{start}    ^`
    - `{end}      $`
    - `{last}     !`
    - `{next}     +`
    - `{previous} -`
- __target-pane__ или __src-pane__ или __dst-pane__
  Префиксер `%`
  Поддерживает практически тоже самое обращение
  что и __окна__ но с небольшими изменениями
  например `mysession:window.1`
  Токены для определения панели:
  - `{last}!` `{next}+` `{previous}-` `{top}` `{bottom}` `{left}` `{right}` 
  - `{top-left}` `{top-right}` `{bottom-left}` `{bottom-right}`
  - `{up-of}` `{down-of}` `{right-of}` `{left-of}` (от активного)
  Например `select-window -t:+2`
- -2
  Включить поддержку __256 colors__ терминала
- -C
  Запустить в __control__ моде
- -c команда
  Выполнить __shell__ команду
- -D
  Не запускать tmux как __daemon__
- -f файл
  Альтернативный конфиг файл (~/.tmux.conf) 
- -L имя_сокета
  Альтернативное имя сокета (default)
- -N 
  Не запускать сервер
- -S путь_сокета
  Альтернативный сокет (по умолчанию его нет)
- -u
  Поддержка __UTF-8__
- -T
  Установить `features` терминала для клиента
- -v (verbose)
  Запустить в режиме логирования
- -V
  Отобразить версию tmux

## Команды
Команды поддерживают аргументы для целей, таких как
В основном передаются аргументы `-t` или `-s`

__Общие__
- __list-commands__ `-f format` `command`
  Сокращение __lscm__
  Список доступных команд
- __set-option__ `flag` `argument`
  Изменить опцию
  __tmux set-option -g status-line bg=black__
- __bind-key__ `-nr` `-N note` `-T key-table` `key` `command` `arguments`
  Сокращение __bind__
  Забиндить клавишу для команды
- __unbind-key__ `-anq` `-T key-table` `key`
  Сокращение __unbind__
  Опозиция __bind-key__
- __list-keys__ `-laN` `-P prefix-string` `-T key-table` `key`
  Сокращение __lsk__
  Отобразить список забинженых клавиш
- __send-keys__ `-FHlMRX` `-N repeat-count` `-t target-pane` `key` `...`
  Сокращение __send__
  Отправить клавиши окну
- __send-prefix__ `-2` `-t target-pane`
  Отправить клавиши префикса панели
- __source-file__ `file`
  Сокращение __source__
  Выполнить tmux команды из файла
- __new-session__
  Создать сессию
- __kill-session__
  Завершить сессию
- __if shell__ `true` `"command"`
  Выполнить если shell?
- __display__ `'message'`
  Отобразить сообщение в статус-лайне
  `-p` отобразить в консоли
- __display-message__ `'message'`
  Отобразить сообщение в статус-лайне
- __show-messagess__
  Сокращение __showmsgs__
  Показывать историю сообщений и информации (__message-limit__)
- __start-server__
  Сокращение __start__
  Запустить сервер tmux
  
## Сессии и Клиенты
__Сессия tmux__ это коллекция терминалов под управлением __tmux__.
Сессии могут быть добавлены, удалены, отключены, приостановлены
и восстановлены (если закрыть tmux и после подключиться(attach))
Если закрыть все сессии - tmux завершит свою работу
Клиенты tmux подключаются к сессиям

- Без параметров
  Создаст новую сессию
- __list-sessions__ `-F format` `-f filter`
  Сокращение __ls__
  Список открытых сессий
- __new-session__ `-AdDEPX` `-c start-dir` `-e environment` `-f flags` `-F format` 
  `-n window-name` `-s session-name` `-t group-name` `-x width` `-y height`
  `shell-command`
  Сокращение __new__
  Создать сессию, `-d` создаст сессию в новом терминале
- __attach-session__ или __attach__ `-t name`
  Подключиться к существующей сессии
  Флаги `-f`:
    - __active-pane__ у клиента будет независимая актив панель
    - __ignore-size__ на клиента не распространяются размеры?
    - __no-output__ клиент не получает вывода от панелей в __control__ моде
    - __pause-after__=`seconds` заморозить вывод от панели на время
    - __read-only__ клиент в режиме только чтение
    - __wait-exit__ ждать ввода пустой строки перед выходом
    - __!__ перед флагом - выключает его, если клиент уже подключен
    - __-r__ сокращение для __ignore-size__ + __read-only__
- __detach-client__ `-aP` `-E shell-command` `-s target-session` `-t target-client`
  Сокращение __detach__
  Отключить клиента
- __has-session__ `-t target-session`
  Если сессии не существует - вернёт ошибку
- __list-clients__
  Список подключенных клиентов
- __list-sessions__
  Список открытых сессий
- __kill-session__ `-t name`
  Закрыть сессию
- __kill-server__
  Закрыть все сессии
- __switch__ `-t name`
  Переключиться на сессию
- __switch-client__ `-ElnprZ` `-c target-client` `-t target session` `-T key-table`
  Сокращение __switchc__
  Изменить сессию для клиента
- __rename-session__ `-t target-session` `name`
  Сокращение __rename__
  Переименовать сессию
- __list-clients__ `-f format` `-t target-session`
  Сокращение __lsc__
  Отобразить список подключенных клиентов
- __-c__ `path`
  Изменить рабочую директорию
- __-E__
  Не использовать __update-environment__
- __lock-session, lock-client, lock-server__
  Лок
- __refresh-client__
- __suspend-client__
  Сокращение __suspendc__
  Заморозить клиент послав сигнал tty stop

## Опции
`set-optiong -g`
- status-style
  bg=black

__Условия__
%if %{==:#{host),myhost} set -g status style bg=red %endif
```bash
if-shell true {
  display -p 'my message'
}
```
  

## Клавиши
__Prefix__ по умолчанию `<Ctrl>b`
Биндинг клавиш разрешен как с префиксом так и без
__bind-key__ `key command`
- C- или ^ (Ctrl)
- M- (alt)
- S- (shift)
- Space, Tab, Enter, Escape F1..F12 BSpace BTab
 
| Клавиша | Описание                                  |
|---------|-------------------------------------------|
| c       | Создать окно                              |
| w       | Список окон                               |
| n       | Следующее окно                            |
| p       | Предыдущее окно                           |
| w       | Выбрать окно                              |
| o       | Переключить панель в текущем окне         |
| d       | Отсоединится от сессии                    |
| f       | Поиск текста в терминалах                 |
| i       | Отобразить информацию о окне              |
| l       | Переключиться на предыдущее окно          |
| m       | Маркировать текущую панель                |
| M       | Очистить маркированую панель              |
| q       | Отобразить индексы панелей                |
| r       | Перерисовать подключенный клиент          |
| s       | Выбрать новую сессию для клиента          |
| D       | Выбрать клиент для detach                 |
| L       | Переместить клиентов в последнюю сессию   |
| x       | Закрыть текущую панель                    |
| z       | Панель на весь экран                      |
| t       | Показать время на весь экран              |
| {num}   | Открыть окно                              |
| "       | Разделить окно горизонтально              |
| %       | Разделить окно вертикально                |
| !       | Перенести терминал в новую вкладку        |
| #       | Список буферов вставок                    |
| $       | Переименовать сессию                      |
| &       | Закрыть окно                              |
| (       | Изменить клиента на предыдущую сессию     |
| )       | Изменить клиента на следующую сессию      |
| ,       | Переименовать окно                        |
| -       | Удалить последний скопированый текст      |
| :       | Войти в режим команды                     |
| ;       | Перейти на предыдущее окно                |
| ?       | Показать горячие клавиши                  |
| [       | Войти в режим копирования и истории       |
| ]       | Вставить скопированый текст               |
| {       | Поменяться местами с предыдущей панелью   |
| }       | Поменяться местами со следующей панелью   |
| ~       | Отобразить логи                           |
| Space   | Поменять пресет-режимы отображения панели |

## Конфигурация
Файл `~/.tmux.conf`
Перезагрузить конфиг `tmux source-file ~/.tmux.conf`
