# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/


# zsh_theme
ZSH_THEME="random"

# zsh_plugins
plugins=(
	git
	sudo
	z
	zsh-syntax-highlighting
	zsh-autosuggestions
)

if [[ $(tty) == '/dev/tty1' ]];then
	export LANG=zh_CN.UTF-8
	startx
fi






ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

