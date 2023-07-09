# Опции tmux
- __set-option__ `-aFgopqsuUw` `-t target-pane` `option` `value`
  Сокращение __set__
  - `-s` Сервер
  - `-w` Окно
  - `-p` Панель
- show-options `-AgHpqsvw` `-t target-pane` `option`
  Сокращение __show__
  Отобразить опции

- __backspace__ `key`
  Установить клавишу backspace
- __buffer-limit__ `num`
  Установить лимит буферов
- __command-alias[]__ `name=value`
  Словарь сокращений для команд
  `set command-alias[100] myname='resize-pane -Z'`
- __default-terminal__ `terminal`
  Установить терминал для окон
- __copy-command__ `shell-command`
- __escape-time__ `time`
  Время в милисекундах escape
- __editor__ `shell-command`
  Установить команду которая выполняется при запуске редактора
- __exit-empty__ `on | off`
  Если включено - сервер закроется при отключении всех сессий
- __exit-unattached__ `on | off`
  Если включено - сервер закроется если нет клиентов
- __extended-keys__ `on | off | always`
- __focus-events__ `on | off`
  Запрашивать события фокуса у терминала
- __history-file__ `path`
  История куда записываются команды tmux
- __message-limit__ `num`
  Лимит логов сообщений
- __set-clipboard__ `on | external | off`
  Использовать метод копирования терминала
- __terminal-features[]__ `string`
- __terminal-overrides[]__ `string`
- __user-keys[]__ `key`
  Список биндов пользователя
  ```bash
  set -s user-keys[0] "\e[5;30012~"
  bind User0 resize-pane -L 3
  ```
- __activity-action__ `any | none | current | other`
  Добавить действие для окна если включен __monitor-activity__
- __assume-paste-time__ `miliseconds`
- __base-index__ `index`
  Базовый индекс для окон, по умолчанию 0
- __bell-action__ `any | none | current | other`
  Тоже самое что и __activity-action__
- __default-command__ `shell-command`
  Установить команду для новых окон
- __default-shell__ `path`
  Определить __shell__ по умолчанию
- __default-size__ `XxX`
  Установить размеры по умолчанию для новых окон
- __destroy-unattached__ `on | off`
  Если нет подключенных клиентов, сессия удаляется
- __detach-on-destroy__ `on | off | no-detached`
  Клиент отсоеденяется когда сессия удаляется
- __display-panes-active-colour__ `colour`
  Установить цвет индикатора для активных панелей (__display-panes__)
- __display-panes-colour__ `colour`
  Установить цвет индикатора для неактивных панелей (__display-panes__)
- __display-panes-time__ `miliseconds`
  Установить время действия индикаторов
- __history-limit__ `lines`
  Установить максимальное количество строк истории
- __key-table__ `key-table`
  Установить таблицу клавиш, по умолчанию root
- __lock-after-time__ `num`
  Заблокировать сессию, как __lock-session__
- __lock-command__ `shell-command`
  Команда для блокирования, по умолчанию `-np`
- __message-command-style__ `style`
  Установить стиль статус-лайна для сообщений команды
- __message-style__ `style`
  Установить стиль статус-лайна для сообщений
- __mouse__ `on | off`
  Разрешает использовать мышь, регистрирует события
- __prefix__ `key`
  Клавиша префикса, можно установить 'None'
- prefix2 `key`
  Установить вторую клавишу префикса
- __renumber-window__ `on | off`
  Упорядочнить номера окон, при закрытии других окон
- __repeat-time__ `time`
  Разрешает использовать несколько команд без ввода префикса (500ms)
- __set-titles__ `on | off`
  Название терминала
- __set-titles-string__ `string`
  Установить название терминала
- __silence-action__ `any | none | current | other`
  Тоже самое что и __activity-action__
- __status__ `off | on | 2 | 3 | 4 | 5`
  Показать, спрятать или изменить размеры (rows) статус-лайна
- __status-format[]__ `format`
  Формат для каждой строки статус-лайна
- __status-interval__ `interval`
  Обновлять статус-лайн каждый `interval` секунд, по умолчанию 15
- __status-justify__ `left | centre | right | absolute-centre`
  Установить позицию статус-лайна
- __status-keys__ `vi | emacs`
  Установить стиль клавиш, по умолчанию emacs
- __status-style__ `style`
  Установить стиль строки статуса
- __status-left__, __status-right__ `string`
  Отобразить строку статус-лайна слева, по умолчанию имя сессии
- __status-left-length__, __status-right-length__ `length`
  Установить размеры левого компонента, по умолчанию 10
- __status-left-style__, __status-left-style__ `style`
  Установить стиль левого компонента статус-лайна
- __status-position__ `top | bottom`
  Установить позицию статус-лайна
- __update-environment[]__ `variable`
  Установить список пространств имён при открытии новой сессии
- __visual-activity__ `on | off | both`
  Отображать сообщение вместо bell
- __visual-bell__ `on | off | both`
  Отображать сообщение on bell
- __visual-silence__ `on | off | both`
  Если __monitor-silence__ включен, отобразить сообщений
- __word-separators__ `string`
  Разделители слов в режиме копирования
- __aggresive-resize__ `on | off`
- __automatic-rename__ `on | off`
  Автоматическое изменение имен окон
- __automatic-rename-format__ `format`
  Формат ренейминга
- __clock-mode-colour__ `colour`
  Установить цвет часов
- __clock-mode-style__ `12 | 24`
  Формат часов
- __main-pane-height__ `height`
- __main-pane-width__ `width`
  Установить размеры главной панели (__main-horizontal__, __main-vertical__)
- __copy-mode-match-style__ `style`
  Стиль поиска в режиме копирования
- __copy-mode-mark-style__ `style`
  Стиль линии маркировок в режиме копирования
- __copy-mode-current-match-style__ `style`
  Стиль линии текущего поиска в режиме копирования
- __mode-keys__ `vi | emacs`
  Биндинги клавиш для режима копирования
- __mode-style__ `style`
  Установить стиль режимов
- __monitor-activity__ `on | off`
  Мониторить активность в окнах
- __monitor-bell__ `on | off`
  Мониторить bell в окнах (видно на строке статуса)
- __monitor-silence__ `interval`
  Мониторить тишину в окнах (не активность)
- __other-pane-height__ `height`
  Установить высоту остальных окон (не мейн) __main-horizontal__
- __other-pane-width__ `width`
  Установить ширину остальных окон __main-vertical__
- __pane-active-border-style__ `style`
  Установить стиль рамки для активной панели
- __pane-base-index__ `index`
  Начальный номер индексации панелей (0)
- __pane-border-format__ `format`
  Установить текст в строке состояния панели
- __pane-border-lines__ `type`
  Установить тип символов для отрисовки рамок панелей
  `single, double, heavy, simple, number`
- __pane-border-status__ `off | top | bottom`
  Выключить строку состояния панели или изменить позицию
- __pane-border-style__ `style`
  Стиль рамок панелей (не main панели)
- __window-status-activity-style__ `style`
  Установить стиль строки состояния окон с активным алертом
- __window-status-bell-style__ `style`
  для bell
- __window-status-current-format__ `string`
  Как и __window-status-format__ но для текущего окна
- __window-status-current-style__ `style`
  Стиль строки состояния для текущего окна
- __window-status-format__ `string`
  Формат строки состояния окна
- __window-status-last-style__ `style`
  Установить стиль строки состояния для последнего активного окна
- __window-status-separator__ `string`
  Разделитель для строки состояния окна
- __window-status-style__ `style`
  Стиль строки состояния окна
- __window-size__ `largest | smallest | manual | latest`
  Установить как tmux будет определять размеры окна
- __wrap-search__ `on | off`
  Search will wrap around the end of the pane
- __allow-rename__ `on | off`
  Разрешить терминалу внутри панели менять название окна
- __alternate-screen__ `on | off`
- __remain-on-exit__ `on | off | failed`
  Панели не уничтожаются после завершения работы приложения
- __synchronize-panes__ `on | off`
  Дублировать ввод всем остальным панелям
- __window-active-style__ `style`
  Стиль для активной панели
- __window-style__ `style`
  Установить стиль панели
