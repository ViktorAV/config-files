# Vim как просмотрщик man-страниц
Добавляем в файл конфигурации командной оболочки __~/.bashrc__
```bash
export MANPAGER=
"/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
```

