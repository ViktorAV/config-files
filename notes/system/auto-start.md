# Настройка авто загрузки приложений

1. Создаём файл в корневом каталоге.
    `touch autostart.sh`
2. Делаем его запускаемым.
    `chmod +x /home/user/autostart.sh`
3. Добавляем строку в `.xinitrc`, куда-нибудь в начало.
    `exec autostart.sh`
