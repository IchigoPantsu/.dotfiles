# base config for oh my zsh
source /usr/share/oh-my-zsh/zshrc

#p10k instant prompt to make terminal open a bit snappier
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source manjaro config
source ~/.zshrc

# fix for comment color on manjaro zsh theme
ZSH_HIGHLIGHT_STYLES[comment]='fg=blue'

# user-defined overrides
[ -d ~/.config/zsh/config.d/ ] && source ~/.config/zsh/config.d/*

# Fix for foot terminfo not installed on most servers
alias ssh="TERM=xterm-256color ssh"

#if [[ -e ~/.my_bashrc ]]; then
#  source ~/.my_bashrc
#fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/elf/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/elf/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/elf/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/elf/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

