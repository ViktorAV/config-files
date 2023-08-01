# rofi - Запуск приложений

## Установка
`sudo apt-get install rofi`

## Файл конфигурации
Путь `.config/rofi/config.rasi`
```vim
configuration {
  font: "monospace Medium 20";
  modi: "window,run,drun";
}

@theme "/dev/null"

* {
  bg: #0a0e14;
  bg-selected: transparent;

  fg: #80a0ff;
  fg-alt: #ebdbb2;

  
  border: 0.5;
  margin: 0;
  padding: 0;
  spacing: 0;
}

window {
  width: 50%;
  background-color: @bg;
  border-color: @fg;
}

element {
  padding: 8 12;
  background-color: transparent;
  text-color: @fg-alt;
}

element selected {
  text-color: @fg;
  background-color: @bg-selected;
}

element-text {
  background-color: transparent;
  text-color: inherit;
  vertical-align: 0.5;
}

entry {
  padding: 12;
  background-color: transparent;
  text-color: @fg;
}

inputbar {
  children: [entry];
  background-color: @bg;
}

listview {
  background-color: @bg;
  columns: 1;
  lines: 10;
}

mainbox {
  children: [inputbar, listview];
  background-color: @bg;
}
```
