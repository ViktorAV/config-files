# Справочник bash
## Название
  `bash` - GNU Bourne-Again SHell.

## Синопсис
  `bash` `[options]` `[command_string | file]`

## Описание
  `bash` это __Shell__-совместимый командный интерпритатор который выполняет
  команды из стандартного ввода или файла.

## Опции
  Если опций-аргументов не остается, то первый аргумент будет считаться названием файла.
  `$0` 
    Устанавливается в название файла.
    Оставшиеся аргументы устанавливаются в переменные после `$0`.
  `exit status`
    Устанавливается в последнюю выполненную команду,
    если команды не выполнялись, устанавливается в `0`.
  `-c` `cmd`
    Выполняет команду `cmd` после запуска __Bash__.
  `-i` 
    Запускает __Bash__ в интерактивном режиме.
  `-l` 
    Запускает __Bash__ в режиме логина.
  `-r`
    Запускает __Bash__ в ограниченом режиме.
  `-s`
    Будет читать команды из стандартного ввода.
  `-v`
    Print shell input lines as they are read.
  `-x`
    Print commands and their arguments as they are executed.
  `-D`
    
  `--debugger`
    Запускает __Bash__ в дебаг режиме.
  `--dump-po-strings`
  `--dump-strings`
  `--help`
  `--init-file` `file`
  `--rcfile` `file`
  `--login`
  `--noediting`
  `--noprofile`
  `--norc`
  `--posix`
  `--restricted`
  `--verbose`
  `--version`
  
