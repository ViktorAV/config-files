# Клавиши ViFM 

## Файлы и директории
Клавиша | Действие
-|-
cw cW|__Переименовать__ файл / расширение
dd DD|__Удалить__ в корзину / навсегда
za|Показать / Скрыть скрытые
zo|__Показать__ скрытые
zm|__Скрыть__ скрытые
ga|__Размер__ директории

## Общие
Клавиша | Действие
-|-
Tab Space|Переключить __окно__
m{key}|Создать __закладку__
'{key}|Перейти на __закладку__
zf|Добавить файл в __фильтр__
zO|Сбросить __фильтр__
zR|Сохранить & перезагрузить __фильтры__
zr|Очистить локальный __фильтр__
zM|Восстановить все __фильтры__

## Бинды (nnoremap)
`nnoremap key :command`
let silent = --remote-tab-silent
Клавиша | Команда | Действие
-|-|-
gb|`:file &<cr>l`|Открыть файл в фоновом режиме
o|`:!vim %f<cr>`|Открыть в __vim__ текущий инстанс
O|`:!vim silent %f<cr>`|Открыть в __vim__ новый инстанс
s|`:shell<cr>`|Запустить __shell__ в текущей директории
S|`:sort<cr>`|Выбрать __сортировку__ в диалоговом __окне__
w|`:view<cr>`|Переключить __режим__ отображения __2 окна__
,t|`:!alacritty &<cr>`|Запустить __консоль__ в тек. директории
,c|`:!vim silent $PATH<cr>`|изменить конфиг

Копирование директории/файла в буфер системы
```python
if has('win')
	nnoremap yd :!echo %"d:gs!\!/! %i | clip<cr>
	nnoremap yf :!echo %"c:gs!\!/! %i | clip<cr>
elseif executable('xclip')
	nnoremap yd :!echo %d | xclip %i<cr>
	nnoremap yf :!echo %c:p | xclip %i<cr>
elseif executable('xsel')
	nnoremap yd :!echo -n %d | xsel --input --primary %i &&
	\ echo -n %d | xsel --clipboard --input %i<cr>
	nnoremap yf :!echo -n %c:p | xsel --input --primary %i &&
	\ echo -n %c:p | xsel --clipboard --input %i<cr>
endif
```
