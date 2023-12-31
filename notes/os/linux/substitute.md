# Подстановка Linux
__Доступные подстановки__
- Фигурные скобки `{ }`
  Будут удобны при создании нескольких файлов или каталогов
  `mkdir folder{0..10}` `touch folder{0..10}/file-{A..Z}`
- Параметры `$`
  `$PS1 $PATH $USER`
- Команды `$()` | обратные ковычки
  `file $(ls -d /usr/bin/* | grep zip)`
- Подстановка строк `[]?!*[:class:]`

__Двойные ковычки__ `" "`
Строки обёрнутые в двойные ковычки, игнорируют почти все специальные
символы, интерпритируя их как обычные символы.
Исключения `$`,`\` и обратные ковычки.
Также они частично влияют на форматирование команд.

__Одиночные ковычки__
Подавляют любые специальные символы

## Групповые специальные символы
- Выбирают файлы по шаблону
- Можно использовать с любыми командами принимающие строки имён файлов
| Шаблон    | Описание                                 |
|-----------|------------------------------------------|
| *         | Любая последовательность, любых символов |
| ?         | Любой один символ                        |
| [qwe]     | Любой один символ из списка              |
| ![qwe]    | Любой один символ не из списка           |
| [:alnum:] | Один Алфавитно-цифровой                  |
| [:alpha:] | Один Алфавитный                          |
| [:digit:] | Один Цифровой                            |
| [:upper:] | Символ верхнего регистра                 |
| [:lower:] | Символ нижнего регистра                  |
__Синтаксис__
```bash
Data???
Backup[0-9][0-9][0-9]
ab[cd]*.txt
[![:digit:]]*
```

## Экранируемые специальные символы
| Символ \ | Описание                         |
|----------|----------------------------------|
| a        | Звуковой сигнал системы          |
| b        | Забой (backspace)                |
| n        | Новая строка                     |
| r        | Возврат каретки                  |
| t        | Табуляция                        |
| d        | Дата                             |
| h H      | Имя хоста, полное имя            |
| j        | Активные задания                 |
| l        | Имя терминала                    |
| s        | Имя командной оболочки           |
| t T      | Время 24 и 12ч форматы           |
| @ A      | Часы и минуты 24 и 12            |
| u        | Имя пользователя                 |
| v V      | Версия, версия и выпуск оболочки |
| w W      | Текущий каталог, имя каталога    |
| !        | Номер текущего индекса в истории |
| #        | Количество введённых команд      |
| $        | Пользователь/Суперпользователь # |
| \[       | Начало последовательности        |
| \]       | Конец последовательности         |
