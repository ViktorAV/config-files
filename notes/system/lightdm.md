# LightDM

Установка
```bash
sudo apt install lightdm
```
Включаем службу lightdm
```bash
sudo systemctl enable lightdm.service
```
Скачиваем тему
```bash
https://github.com/manilarome/lightdm-webkit2-theme-glorious
```
Копируем тему в каталог _/usr/share/lightdm-webkit/themes/glorius_
Редактируем файл _/etc/lightdm/lightdm.conf_ и
устанавливаем lightdm greeter на webkit2-greeter,
webkit_theme на glorius и включаем дебаг мод
```bash
greeter_session = lightdm-webkit2-greeter
webkit_theme = glorius
debug_mode = true
```


