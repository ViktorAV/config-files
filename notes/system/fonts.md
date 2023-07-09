# Установка шрифтов
Создаем каталог для шрифтов, если его еще нет.
`mkdir ~/.fonts`

Клонируем Git репозиторий со шрифтом.
`git clone https://github.com/adobe-fonts/source-code-pro ~/.fonts/source-code-pro`

Кешируем загруженный шрифт.
`fc-cache -f -v ~/.fonts/source-code-pro`
