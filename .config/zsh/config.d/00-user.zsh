###fzf config###                                                                               
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"                                
export FZF_DEFAULT_OPTS="--preview-window=down:15% --height 60% --reverse --border --preview 'bat --style=numbers --color=always {}'"                                                                                   
                                                                                               
### keybinding and completion settings                                                         
#fzf_version = brew --version                                                                  
#source /home/linuxbrew/.linuxbrew/Cellar/fzf/0.21.1/shell/key-bindings.bash                   
#source /home/linuxbrew/.linuxbrew/Cellar/fzf/0.21.1/shell/completion.bash                     
#source /usr/share/fzf/key-bindings.bash                                                        
#source /usr/share/fzf/completion.bash                                                          
export FZF_COMPLETION_TRIGGER='~'                                                              
                                                                                               
#[ -f ~/.fzf.bash ] && source ~/.fzf.bash                                                       
                                                                                               
###fzf for nvim alias                                                                          
function _fzf_complete_nv() {                                                                           
  _fzf_complete --multi --reverse --prompt ="nv> " -- "$@"                                     
}                                                                                              
[ -n "$bash" ] && complete -f _fzf_complete_nv -o default -o bashdefault nv                    

#__fzf_history__() {
#  if type tac > /dev/null 2>&1; then tac="tac"; else tac="tail -r"; fi
#  shopt -u nocaseglob nocasematch
#  echo $(HISTTIMEFORMAT= history | command $tac | sed -e 's/^ *[0-9]\{1,\}\*\{0,1\} *//' -e 's/ *$//' | awk '!a[$0]++' |
#      FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} $FZF_DEFAULT_OPTS --sync -n2..,.. --tiebreak=index --bind=ctrl-r:toggle-sort $FZF_CTRL_R_OPTS +m" $(__fzfcmd))
#}
#bind '"\C-r": " \C-e\C-u\C-y\ey\C-u`__fzf_history__`\e\C-e\er\e^"'
                                                                                               
                                                                                               
# shellcheck shell=sh                                                                          
# Compatible with ranger 1.4.2 through 1.9.*                                                   
#                                                                                              
# Automatically change the current working directory after closing ranger                      
#                                                                                              
# This is a shell function to automatically change the current working                         
# directory to the last visited one after ranger quits. Either put it into your                
# .zshrc/.bashrc/etc or source this file from your shell configuration.                        
# To undo the effect of this function, you can type "cd -" to return to the                    
# original directory.                                                                          
                                                                                               
function ranger_cd() {                                                                                  
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"                                            
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"                                            
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then                                                                                       
        cd -- "$chosen_dir"                                                                    
    fi                                                                                         
    rm -f -- "$temp_file"                                                                      
}                                                                                             
                                                                                               
# This binds Ctrl-O to ranger-cd:                                                              
#bind '"\C-o":"ranger-cd\C-m"'                                                                  
                                                                                               
                                                                                               
                                                                                               
###enable color support of ls and also add handy aliases                                       
if [ -x /usr/bin/dircolors ]; then                                                             
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"      
    alias ls='ls --color=auto'                                                                 
    #alias dir='dir --color=auto'                                                              
    #alias vdir='vdir --color=auto'                                                            
                                                                                               
    alias grep='grep --color=auto'                                                             
    alias fgrep='fgrep --color=auto'                                                           
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -A'

# よく設定されているalias
# https://qiita.com/hirooooooo/items/5c47fdaf40fc1d3b702f
alias ls='ls --color=auto'
alias rm='rm -i'

alias ..='cd ..'
alias ~='cd ~'

alias mv='mv -i'
alias cp='cp -i'

alias vi='vim'

alias gs='git status'

alias c='clear'

### my bash alias
alias open='xdg-open'

alias rc='wf-recorder -g "$(slurp)" --file "$(date +%Y%m%d-%H%M%S)".mp4'
alias ss='grim -g "$(slurp)" - | swappy -f -'
#grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.pid? and .visible?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"' | slurp)" - | swappy -f -
alias nv='nvim'
alias nt="nvim -c ':term'"
alias nmk="nvim -c ':make'"
alias e.='ranger_cd' 
alias .e='ranger_cd' 
alias w.='ranger_cd' 
alias .w='ranger_cd' 

alias zathura='zathura --plugins-dir=/usr/lib/zathura'
export XCURSOR_THEME=Adwaita XCURSOR_SIZE=32 slurp

#unity
#https://github.com/OmniSharp/omnisharp-vim/issues/583
export FrameworkPathOverride=/lib/mono/4.7.2-api
export LESS='iRX'
#[jeffreytse/zsh-vi-mode: 💻 A better and friendly vi(vim) mode plugin for ZSH.](https://github.com/jeffreytse/zsh-vi-mode)
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
# Define an init function and append to zvm_after_init_commands
function my_init() {
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
}
zvm_after_init_commands+=(my_init)

##[Bashでコマンドの存在チェック - LESS IS MORE]
##(http://r9y9.github.io/blog/2013/08/12/bash-check-commend-existence/)
#if type key-mapper-control &> /dev/null # 2>&1
#then
#    key-mapper-control --command autoload &> /dev/null 
#fi

#[jeffreytse/zsh-vi-mode: 💻 A better and friendly vi(vim) mode plugin for ZSH.](https://github.com/jeffreytse/zsh-vi-mode)
function zvm_after_lazy_keybindings() {
  zvm_bindkey vicmd 'a'  zvm_enter_insert_mode i
  zvm_bindkey vicmd 'i'  zvm_enter_insert_mode a
  zvm_bindkey vicmd 'A'  zvm_insert_bol
  zvm_bindkey vicmd 'I'  zvm_append_eol
  zvm_bindkey vicmd 'h'  vi-backward-word
  zvm_bindkey vicmd 'l'  vi-forward-word-end
}

zvm_vi_yank () {
	zvm_yank
	printf %s "${CUTBUFFER}" |  wl-copy -n
	zvm_exit_visual_mode
}
#[Qt 5.11 での Wayland 対応の改善](https://www.qt.io/ja-jp/blog/2018/10/30/whats-new-in-qt-5-11-for-the-wayland-platform-plugin)
export QT_QPA_PLATFORM="wayland;xcb"

#for emsdk
#source "/usr/lib/emsdk/emsdk_env.sh"
#clear
