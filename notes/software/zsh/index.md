# Zsh shell
## Установка
`sudo dnf install zsh`

## Изменение шелла
`chsh -s $(which zsh)`

## Oh-My-Zsh
https://github.com/robbyrussell/oh-my-zsh
Это фреймворк для управления настройками zsh.
Установка
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
Настройка `.zshrc`
```vim
DISABLE_MAGIC_FUNCTIONS=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
COMPLETION_WAITING_DOTS=true
DISABLE_UNTRACKED_FILES_DIRTY=true

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
```

## Oh-My-Zsh плагины
__zsh-autosuggestions__
  https://github.com/zsh-users/zsh-autosuggestions
  Добавляет автодополнение для shell команд.
  `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
__zsh-syntax-highlighting__
  https://github.com/zsh-users/zsh-syntax-highlighting
  Подсвечивает синтаксис в оболочке.
  `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
  
  
## Конфигурация
Файл: `~/.zshrc`
```vim
PLUGINSTALL_PATH="$HOME/.config/antigen.zsh" # Установщик плагинов
CARGO_PATH="$HOME/.cargo/bin"		 # Cargo
PYTHON_PATH="$HOME/.local/bin" 		 # Бинарники Python
NVM_DIR="$HOME/.nvm"			 # Node Version
HISTFILE="$HOME/.zsh_history"		 # История команд
EDITOR="vim"				 # Редактор текста
HISTSIZE=3000				 #
SAVEHIST=3000				 #
setopt appendhistory			 # Сохраняем всю историю

# Проверка наличия бинарников Cargo
if [ -d $CARGO_PATH ]; then
  export PATH=$CARGO_PATH:$PATH
fi

# Проверка наличия бинарников Python
if [ -d $PYTHON_PATH ]; then
  export PATH=$CARGO_PATH:$PATH
fi

# Проверка установщика плагинов
if [ ! -f $PLUGINSTALL_PATH ]; then
  echo "Plugin installer is not found!" >&2
    # Если нет установщика плагинов, то скачиваем его
    curl -L git.io/antigen > $PLUGINSTALL_PATH
fi

source $PLUGINSTALL_PATH

antigen bundle autojump
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle reobin/typewritten@main
antigen apply
```
