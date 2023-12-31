# Alacritty
- Быстрый кроссплатформенный эмулятор терминала.
- Поддерживает vi-mode.
- Использует OpenGL для оптимизации вычисления в GPU. 

## Установка
`sudo dnf install alacritty`
Создаем каталог `~/.config/alacritty`
Копируем стандартный конфиг.
`cp /usr/share/doc/alacritty/example/alacritty.yml ~/.config/alacritty/alacritty.yml`

## Конфиг
`~/.config/alacritty/alacritty.yml`

```bash
env:
  TERM: xterm-256color

font:
  normal:
    family: Source Code Pro
    style: Regular
  bold:
    family: Source Code Pro
    style: Bold
  italic:
    family: Source Code Pro
    style: Italic
  bold_italic:
    family: Source Code Pro
    style: Bold Italic
  offset:
    x: 0
    y: 1
  size: 24.0
draw_bold_text_with_bright_colors: true

window_opacity: 1.0

colors:
  primary:
    background: '#282828'
    foreground: '#ebdbb2'

  cursor:
    text:   '#080808'
    cursor: '#939393'

  selection:
    text:       '#080808'
    background: '#b2ceee'

  normal:
    black:   '#282828'
    red:     '#cc241d'
    green:   '#98971a'
    yellow:  '#d79921'
    blue:    '#458588'
    magenta: '#b16286'
    cyan:    '#689d6a'
    white:   '#a89984'

  bright:
    black:   '#928374'
    red:     '#fb4934'
    green:   '#b8bb24'
    yellow:  '#fabd2f'
    blue:    '#83a598'
    magenta: '#d3869b'
    cyan:    '#8ec07c'
    white:   '#ebdbb2'


key_bindings:
  - { key: V, mods: Control, action: Paste }
  - { key: K, mods: Control, action: ScrollPageUp }
  - { key: J, mods: Control, action: ScrollPageDown }
```
