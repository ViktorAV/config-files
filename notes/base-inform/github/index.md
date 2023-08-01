# GitHub

## Быстрый старт
### Создаём и настраиваем новый проект git
```bash
git config --global user.name "ViktorAV"
git config --global user.email "mrtrac@yandex.ru"
git config --global defaultBranch.name "main"

git init
git add remote origin git@github.com:ViktorAV/config-files.git
git clone https://github.com/ViktorAV/config-files.git
git clone git@github.com:ViktorAV/config-files.git
git pull git@github.com:ViktorAV/config-files.git main
```

### Создаём ключи SSH
SSH - это протокол для безопасного соединения между компьютерами.
SSH ключ состоит из двух частей
- Открытый.
  Его мы отправляем на сервер.
- Закрытый.
  Доступ к нему должен быть только у вас.

Итак, создаём ключ с помощью алгоритма `ed25519`
```bash
ssh-keygen -t ed25519 -C "mrtrac@yandex.ru"
```
Или создаём ключ с помощью алгоритма `rsa`
```bash
ssh-keygen -t rsa -b 4096 -C "mrtrac@yandex.ru"
```
Терминал вас спросит, куда сохранить ключ, можно сохранять в каталог `.ssh`
Теперь необходимо добавить SSH-ключ в SSH-агент
SSH-agent это программа для хранения и управления SSH-ключами.
```bash
eval "$(ssh-agent -s)"
# Должно вывести Agent pid и число.
```
Теперь добавим нам ssh-ключ командой
```bash
ssh-add ~/.ssh/имя ключа
# Должно вывести identity added
```
Теперь добавим наш ключ на GitHub
Копируем его в буфер обмена
```bash
clip < ~/.ssh/key-name.pub
```
Перейдите на вкладку работы с SSH-ключами на GitHub
Profile -> Settings -> SSH and GPG keys -> SSH-keys: New SSH key
В поле Title можно ввести название вашей рабочей машины. (MacBook, NoteBoot, HomePC)
Вставьте скопированный ключ в поле Key и добавьте его.
Теперь вы можете склонировать репозиторий из GitHub
```bash
git clone git@github.com:VictorAV/project.git optional-folder
```
Отправляем локальные изменения на GitHub
```bash
git push origin main
```
Получаем файлы из GitHub на локальный сервер
```bash
git pull git@github.com:VictorAV/project.git main
```
