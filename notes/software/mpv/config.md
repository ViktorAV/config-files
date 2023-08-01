# Конфигурация
Путь `~/.config/mpv/mpv.conf`

```vim
fs=yes # Запускать в полный экран.
geometry=50%:50% # Запускать с экраном по центру.
autofit-larger=90%x90% # Не разрешать новому окну быть больше 90% от экрана.
keep-open=yes # Не закрывать окно при выходе.
force-window=immediate # Показывать окно не дожидаясь загрузки видео.
osc=no # Выключить Screen Controller
ontop=yes # Поверх всех окон.
profile=gpu-hq # Определить рендеринг качества для видео
# video-sync=display-resample # Синхронизация видео и аудио
hwdec=auto # Включить свой декодинг если доступен
audio-device=alsa/default # Определить устройство аудио
audio-pitch-correction=no # Не фильтровать аудио
audio-channels=5.1 # Оутпут аудио формат
audio-channels=auto # Отключить автоматический ремикс, auto-safe
user-agent="Mozilla/5.0" # Эмулировать веб браузер
cache=yes # Использовать большой RAM cache даже для локального ввода
demuxer-max-bytes=500M # Дополнительный размер кеша
demuxer-max-back-bytes=100M 
cache-pause=no # Плеер остановится если кеш будет ниже определенного full size
cache-dir=~/.cache/ # Директива хранения кеша
cache-on-disk=yes # Включить кеш файлы, вместо RAM
slang=ru # Включить субтитры если доступны
alang=ru,en # Приоритет языков субтитров
sub-codepage=cp1256 # Энкодинг субтриторов
# sharpen=5 # eye-cancer
```
