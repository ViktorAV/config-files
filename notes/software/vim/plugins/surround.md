# Vim плагин surround
Справка `:h surround`
[GitHub](https://github.com/tpope/vim-surround)
Изменяет, Удаляет, Добавляет пары
- [[html]], [[XML]] тэги
- Ковычки

## Установка
[Vundle](vundle): `Plugin 'tpope/vim-surround'`

## Клавиши
`cs{что}{на что}`
| Клавиша | Описание              |
|---------|-----------------------|
| cs      | Изменить              |
| ds      | Удалить               |
| yss     | Добавить              |
| ysiw    | Добавить под курсором |

## Пример
`"Hello World"`
`cs"<div>`
`<div>Hello World</div>`

Добавить блок к выделенному
`S<p class="important">`
