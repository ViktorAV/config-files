# Буферы Файлы
- __:w :write__
  Сохраняет буфер в файл. 
- __:wall__
  Сохраняет все буферы в файлы.
- __:update__
  Обновляет содержимое файла.
- __:saveas__
  Сохраняет буфер в файл по имени.
- __:e :edit__` file`
  Открывает файл.
- __:find__
  Открывает файл по имени.
- __:ls__
  Показывает активные буферы.
- __:1__
  Переходит на первую строку.
- __:$__
  Переходит на последнюю строку.
- __:__`1, 5`
  Выбирает с первой по пятую строку.
- __:.__
  Выбирает текущую строку.
- __:%__
  Выбирает все строки буфера.
- __:'<,'>__
  Выбирает выделенный участок текста.
- __:buffer__ `index`
  Перейти к буферу по индексу или имени.
- __:bdelete__ `index`
  Удаляет текущий буфер не закрывая vim.
  `index` Удаляет по индексу или имени.
- __:bp :bprev, :bn :bnext__
  Переходит к предыдущему или следующему буферу.
- __:bfirst :blast__
  Переходит к первому или последнему буферу.
- __:bufdo__
  Применяет команду Ex ко всем активным буферам.
- __:argdo__
  Применяет команду ко всем элементам списка аргументов.
- __:args__
  Показывает список аргументов.
- __:co :copy :yank__
  Копирует строку.
- __:mo :move__
  Перемещает строку.
- __:de :delete__
  Удаляет строку.
- __:join__
  Объеденяет строки.
- __:put__
  Вставляет.
- __:s :substitute__
  Заменяет текст по шаблону.
