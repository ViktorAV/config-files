# Файловая система Linux
>Одна из идей Linux гласит: Всё сущее есть файл.
__Linux Filesystem Hierarchy Standard__
Linux организовывает свои файлы в иерархическую структуру каталогов.
- Каталоги имеют древовидную организацию
- Каждый каталог может содержать другие файлы и каталоги
- Первый каталог в файловой системе называется корневым.
Каждый пользователь имеет свой домашний каталог, который располагается в
папке `/home` он открывается сразу после входа в систему.
Пути файловых систем могут быть двух видов:
1. Относительный (Относительно текущего рабочего каталога `./`)
2. Абсолютный (Относительно корня `/`)

## Имена файлов
- Файлы, имена которых начинаются с `.` считаются скрытыми
- Регистры символов влияют на файлы
- Поддерживаются длинные имена с пробелами и специальными символами
- Расширения файлов не поддерживаются
- Разделять имена рекомендуется нижним подчеркиванием

## Каталоги
- `/` Корневой
- `/bin`
  Двоичные файлы, необходимые для загрузки и работы системы
- `/sbin`
  Двоичные файлы суперпользователя
- `/boot`
  - `vmlinuz` Ядро Linux
  - `/grub/grub.conf` Файл конфигурации загрузчика
  - Образ начального RAM-диска с драйверами для этапа загрузки
- `/dev` 
  Устройства
- `/etc` 
  Конфигурационные файлы
  - `crontab` автоматизированные задания
  - `fstab` таблица устройств и точек монтирования
  - `passwd` список учётных записей
- `/home`
  Личные каталоги пользователей
- `/root`
  Личный каталог суперпользователя
- `/lib`
  Библиотеки
- `/lost+found`
  Восстановление после повреждения файловой системы
- `/media`
  Точки монтирования устройств
- `/mnt`
  Точки монтирования
- `/opt` 
  Для установки программного обеспечения (в основном коммерческого)
- `/proc`
  Виртуальная файловая система Linux, имеет доступ к чтению ядра
- `/tmp`
  Временные файлы
- `/usr`
  Программы и файлы справки для пользователей
  - `/bin` двоичные файлы
  - `/lib` библиотеки для программ из `/usr/bin`
  - `/local` установленные программы
  - `/sbin` дополнительные файлы администратирования
  - `/share` файлы конфигурации
	- `/doc` файлы документации
- `/var`
  Часто изменяемые файлы
  - `/log` Журналы системы (логи) `messages, syslog` наиболее интересные