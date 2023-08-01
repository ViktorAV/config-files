# Файл конфигурации vifmrc
Путь: `.config/vifm/vifmrc

```python
#Переменная
let $CFGPATH = $HOME.'.config/vifm/vifmrc'

# Перемещает файлы в корзину, комманда dd (DD удаляет навсегда)
set trash

# Количество директорий хранящизся в истории
set history=100

# Уровень изменений которые можно отменить
set undolevels=100

# Использовать Vim формат файлов помощи (подсветка)
set vimhelp

# Позволяет запускать исполняемые файлы по Enter или l
set norunexec

# Изменяет цветовую схему (.config/vifm/colors/Default.vifm
set colorscheme Default

# Формат даты & времени (снизу справа)
set timefmt[%d/%m/%y]\ [%H:%M]

# Автодополнения коммандной строки
set wildstyle=popup

# Игнорировать регистр в поиске
set ignorecase
set smartcase

# Не подсвечивать результаты поиска
set nohlsearch

# Использовать инкрементальный поиск (пока пишешь ищет дальше)
set incsearch

# Начинать прокручивать дальше если остается менее ? элементов
set scrolloff=4 

# Формат статус лайна (снизу слева)
set statusline="  Hint: %z%= %A %10u:%-7g %15s %20d  "
```
