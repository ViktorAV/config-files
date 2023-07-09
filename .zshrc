export PLUGINSTALL_PATH="$HOME/.config/antigen.zsh" # Установщик плагинов
export CARGO_PATH="$HOME/.cargo/bin"		 # Cargo
export PYTHON_PATH="$HOME/.local/bin" 		 # Бинарники Python
export NVM_DIR="$HOME/.nvm"			 # Node Version
export HISTFILE="$HOME/.zsh_history"		 # История команд
export EDITOR="vim"				 # Редактор текста
export HISTSIZE=3000				 #
export SAVEHIST=3000				 #
# export FZF_PREVIEW_ADVANCED=true
# export FZF_PREVIEW_WINDOW=''
export FZF_PATH="$HOME/.fzf"
export FZF_DEFAULT_OPTS="--border --inline-info"
export FZF_DEFAULT_COMMAND="find * -type f"
setopt appendhistory			 # Сохраняем всю историю

export PATH=$PYTHON_PATH:$PATH
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

if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

[ -f $FZF_PATH/fzf.zsh ] && source $FZF_PATH/fzf.zsh
source $PLUGINSTALL_PATH

antigen bundle git
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-autosuggestions
antigen bundle reobin/typewritten@main
antigen bundle unixorn/fzf-zsh-plugin@main
antigen apply
