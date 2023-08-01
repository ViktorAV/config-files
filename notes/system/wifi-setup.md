# Настройка WiFi

Выполняем команду `iwconfig` и ищем свой WiFi адаптер в списке
```bash
sudo iwconfig
# wlx3c3300034424
```
Сканируем доступные подключения командой `iwlist`
```bash
sudo iwlist wlx3c3300034424 scan | grep ESSID
```

Подключаемся к WiFi с помощью программы wpa_supplicant
Сначала сконфигурируем файл `/etc/wpa_supplicant.conf`
```bash
sudo apt install wpasupplicant
wpa_passphrase Tracone password | sudo tee /etc/wpa_supplicant.conf
```
Выполняем подключение
```bash
sudo wpa_supplicant -c /etc/wpa_supplicant.conf -i wlx3c3300034424
```
Подключение должно быть выполнено, проверим командой `iwconfig`
```bash
sudo iwconfig
# Должна появиться связь ESSID с Tracone
```

